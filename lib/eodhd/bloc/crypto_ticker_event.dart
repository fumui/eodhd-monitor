part of 'crypto_ticker_bloc.dart';


sealed class CryptoTickerEvent extends Equatable {
  const CryptoTickerEvent();

  @override
  List<Object?> get props => [];
}

final class ReceiveCryptoTicker extends CryptoTickerEvent {}