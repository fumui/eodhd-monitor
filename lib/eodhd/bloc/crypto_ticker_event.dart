part of 'crypto_ticker_bloc.dart';


sealed class CryptoTickerEvent extends Equatable {
  const CryptoTickerEvent();

  @override
  List<Object?> get props => [];
}

final class SubscribedCryptoTicker extends CryptoTickerEvent {
  final String tickerCode;

  const SubscribedCryptoTicker({required this.tickerCode});

  @override
  List<Object?> get props => [tickerCode];
}

final class UnsubscribedCryptoTicker extends CryptoTickerEvent {
  final String tickerCode;
  final bool closeChannel;
  const UnsubscribedCryptoTicker({required this.tickerCode, this.closeChannel = false});

  @override
  List<Object?> get props => [tickerCode];
}

final class ReceivedCryptoTicker extends CryptoTickerEvent {
  final CryptoTicker ticker;

  const ReceivedCryptoTicker({required this.ticker});

  @override
  List<Object?> get props => [ticker];
}