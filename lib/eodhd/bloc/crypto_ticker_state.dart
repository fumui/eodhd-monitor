part of 'crypto_ticker_bloc.dart';

enum CryptoTickerStatus { initial, subscribed, unsubscribed, error }

final class CryptoTickerState extends Equatable {
  final CryptoTickerStatus status;
  final List<CryptoTicker> ETHUSDTickers;
  final List<CryptoTicker> BTCUSDTickers;
  final bool hasReachedMax;
  final String errorMessage;

  const CryptoTickerState({
    required this.status,
    required this.ETHUSDTickers,
    required this.BTCUSDTickers,
    required this.hasReachedMax,
    required this.errorMessage
  });

  factory CryptoTickerState.initial() {
    return const CryptoTickerState(
      status: CryptoTickerStatus.initial,
      ETHUSDTickers: [],
      BTCUSDTickers: [],
      hasReachedMax: false,
      errorMessage: ''
    );
  }

  CryptoTickerState copyWith({
    CryptoTickerStatus? status,
    List<CryptoTicker>? ETHUSDTickers,
    List<CryptoTicker>? BTCUSDTickers,
    bool? hasReachedMax,
    String? errorMessage
  }) {
    return CryptoTickerState(
      status: status ?? this.status,
      ETHUSDTickers: ETHUSDTickers ?? this.ETHUSDTickers,
      BTCUSDTickers: BTCUSDTickers ?? this.BTCUSDTickers,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      errorMessage: errorMessage ?? this.errorMessage
    );
  }

  @override
  String toString() {
    return '''CryptoTickerState { status: $status, hasReachedMax: $hasReachedMax, errorMessage: $errorMessage, ETHUSDTickers: ${ETHUSDTickers.length}, BTCUSDTickers: ${BTCUSDTickers.length} }''';
  }

  @override
  List<Object?> get props => [status, ETHUSDTickers, BTCUSDTickers, hasReachedMax, errorMessage];
}