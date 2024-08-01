part of 'crypto_ticker_bloc.dart';

enum CryptoTickerStatus { initial, subscribed, unsubscribed, error }

final class CryptoTickerState extends Equatable {
  final CryptoTickerStatus status;
  final List<CryptoTicker> tickers;
  final bool hasReachedMax;
  final String errorMessage;

  const CryptoTickerState({
    required this.status,
    required this.tickers,
    required this.hasReachedMax,
    required this.errorMessage
  });

  factory CryptoTickerState.initial() {
    return const CryptoTickerState(
      status: CryptoTickerStatus.initial,
      tickers: [],
      hasReachedMax: false,
      errorMessage: ''
    );
  }

  CryptoTickerState copyWith({
    CryptoTickerStatus? status,
    List<CryptoTicker>? tickers,
    bool? hasReachedMax,
    String? errorMessage
  }) {
    return CryptoTickerState(
      status: status ?? this.status,
      tickers: tickers ?? this.tickers,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      errorMessage: errorMessage ?? this.errorMessage
    );
  }

  @override
  String toString() {
    return '''CryptoTickerState { status: $status, hasReachedMax: $hasReachedMax, errorMessage: $errorMessage, tickers: ${tickers.length} }''';
  }

  @override
  List<Object?> get props => [status, tickers, hasReachedMax, errorMessage];
}