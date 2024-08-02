part of 'crypto_ticker_bloc.dart';

enum CryptoTickerStatus { initial, subscribed, unsubscribed, error }

final class CryptoTickerState extends Equatable {
  final CryptoTickerStatus status;
  final Map<String, List<CryptoTicker>> tickersMap;

  const CryptoTickerState({
    required this.status,
    required this.tickersMap,
  });

  factory CryptoTickerState.initial() {
    return const CryptoTickerState(
      status: CryptoTickerStatus.initial,
      tickersMap: {},
    );
  }

  CryptoTickerState copyWith({
    CryptoTickerStatus? status,
    Map<String, List<CryptoTicker>>? tickersMap,
    bool? hasReachedMax,
    String? errorMessage
  }) {
    return CryptoTickerState(
      status: status ?? this.status,
      tickersMap: tickersMap ?? this.tickersMap,
    );
  }

  String getLastTickersState() {
    var s = '';
    tickersMap.forEach((key, value) {
      s+= '$key: ${value.last.timestamp.millisecondsSinceEpoch} | ';
    });
    return s;
  }

  @override
  String toString() {
    return '''CryptoTickerState { status: $status, tickers: ${getLastTickersState()} }''';
  }

  @override
  List<Object?> get props => [status, getLastTickersState()];
}