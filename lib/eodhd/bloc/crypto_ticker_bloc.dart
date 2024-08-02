import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:eodhd_monitor/eodhd/eodhd.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

part 'crypto_ticker_event.dart';
part 'crypto_ticker_state.dart';

class CryptoTickerBloc extends Bloc<CryptoTickerEvent, CryptoTickerState> {
  final WebSocketChannel wsChannel;

  CryptoTickerBloc({required this.wsChannel}) : super(CryptoTickerState.initial()) {
    on<ReceivedCryptoTicker>(_onReceivedCryptoTicker);
    on<SubscribedCryptoTicker>(_onSubscribedCryptoTicker);
    on<UnsubscribedCryptoTicker>(_onUnsubscribedCryptoTicker);
  }

  void _onReceivedCryptoTicker(CryptoTickerEvent event, Emitter<CryptoTickerState> emit) async {
    final receivedCryptoTicker = (event as ReceivedCryptoTicker).ticker;
    if (state.tickersMap.containsKey(receivedCryptoTicker.tickerCode) && state.tickersMap[receivedCryptoTicker.tickerCode]!.isNotEmpty && state.tickersMap[receivedCryptoTicker.tickerCode]!.last.timestamp.second == receivedCryptoTicker.timestamp.second){
      return;
    }
    final Map<String, List<CryptoTicker>> updatedTickersMap = Map.from(state.tickersMap)
      ..update(
        receivedCryptoTicker.tickerCode, 
        (value) {
          if (value.length >= 60) value.removeRange(0, value.length-59);
          return List.from(value)..add(receivedCryptoTicker);
        }, 
        ifAbsent: () => [receivedCryptoTicker]
      );
    emit(state.copyWith(
      status: CryptoTickerStatus.subscribed,
      tickersMap: updatedTickersMap,
    ));
  }

  void _onSubscribedCryptoTicker(CryptoTickerEvent event, Emitter<CryptoTickerState> emit) async {
    if (state.status == CryptoTickerStatus.initial){
      _initializeWebSocket();
    }
    final data = jsonEncode({'action': 'subscribe', 'symbols': (event as SubscribedCryptoTicker).tickerCode});
    wsChannel.sink.add(data);
    emit(state.copyWith(status: CryptoTickerStatus.subscribed));
  }

  void _onUnsubscribedCryptoTicker(CryptoTickerEvent event, Emitter<CryptoTickerState> emit) async {
    final data = jsonEncode({'action': 'unsubscribe', 'symbols': (event as UnsubscribedCryptoTicker).tickerCode});
    wsChannel.sink.add(data);
    emit(state.copyWith(status: CryptoTickerStatus.unsubscribed));
  }

  void _initializeWebSocket() {
    wsChannel.stream
      .listen((event) {
        final data = jsonDecode(event);
        if (data['s'] != null){
          add(ReceivedCryptoTicker(ticker: CryptoTicker(
            tickerCode: data['s'],
            lastPrice: data['p'],
            quantity: data['q'],
            dailyChangePercentage: data['dc'],
            dailyDifference: data['dd'],
            timestamp: DateTime.fromMillisecondsSinceEpoch(data['t'])
          )));
        }
      });
  }
}