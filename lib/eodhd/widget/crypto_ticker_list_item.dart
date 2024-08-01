import 'package:eodhd_monitor/eodhd/eodhd.dart';
import 'package:flutter/material.dart';

class CryptoTickerListItem extends StatelessWidget {
  const CryptoTickerListItem({super.key, required this.ticker});

  final CryptoTicker ticker;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(ticker.tickerCode),
      title: Text(ticker.dailyChangePercentage),
      subtitle: Text(ticker.lastPrice),
      dense: true,
      isThreeLine: true,
    );
  }
}