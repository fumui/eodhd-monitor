import 'package:eodhd_monitor/eodhd/eodhd.dart';
import 'package:eodhd_monitor/eodhd/widget/crypto_ticker_chart.dart';
import 'package:flutter/material.dart';

class StockCard extends StatelessWidget {
  final bool isExpanded;
  final CryptoTicker stock;
  final Null Function() onTap;

  const StockCard({super.key, required this.stock, required this.isExpanded, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      surfaceTintColor: Theme.of(context).indicatorColor,
      margin: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          ListTile(
            title: Text(stock.tickerCode),
            subtitle: Text(stock.tickerCode),
            trailing: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('\$${stock.lastPrice}'),
                Text(stock.dailyChangePercentage,
                    style: TextStyle(
                        color: double.parse(stock.dailyDifference) >= 0
                            ? Colors.green
                            : Colors.red)),
              ],
            ),
            onTap: onTap,
          ),
          if (isExpanded)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text('Change: \$${stock.dailyDifference}'),
                  CryptoTickerChart(tickerCode: stock.tickerCode),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
