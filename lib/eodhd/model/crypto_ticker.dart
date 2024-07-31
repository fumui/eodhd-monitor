import 'package:equatable/equatable.dart';

class CryptoTicker extends Equatable{
  final String tickerCode;
  final String lastPrice;
  final String quantity;
  final String dailyChangePercentage;
  final String dailyDifference;
  final int timestampMs;

  const CryptoTicker({
    required this.tickerCode,
    required this.lastPrice,
    required this.quantity,
    required this.dailyChangePercentage,
    required this.dailyDifference,
    required this.timestampMs
  });

  @override
  List<Object?> get props => [tickerCode, lastPrice, quantity, dailyChangePercentage, dailyDifference, timestampMs];
}