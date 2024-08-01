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
    if (state.hasReachedMax){
      add(UnsubscribedCryptoTicker(tickerCode: receivedCryptoTicker.tickerCode));
    }
    switch (receivedCryptoTicker.tickerCode){
      case 'ETH-USD':
        if (state.ETHUSDTickers.isNotEmpty && state.ETHUSDTickers.last.timestamp.second == receivedCryptoTicker.timestamp.second){
          return;
        }
        emit(state.copyWith(
          status: CryptoTickerStatus.subscribed,
          ETHUSDTickers: List.from(state.ETHUSDTickers)..add(receivedCryptoTicker),
          hasReachedMax: state.ETHUSDTickers.length >= 100
        ));
        break;
      case 'BTC-USD':
        if (state.BTCUSDTickers.isNotEmpty && state.BTCUSDTickers.last.timestamp.second == receivedCryptoTicker.timestamp.second){
          return;
        }
        emit(state.copyWith(
          status: CryptoTickerStatus.subscribed,
          BTCUSDTickers: List.from(state.BTCUSDTickers)..add(receivedCryptoTicker),
          hasReachedMax: state.BTCUSDTickers.length >= 100
        ));
        break;
    }
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