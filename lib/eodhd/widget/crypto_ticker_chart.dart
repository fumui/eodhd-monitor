import 'package:eodhd_monitor/eodhd/eodhd.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart' hide TextDirection;

class CryptoTickerChart extends StatelessWidget {
  final String tickerCode;
  const CryptoTickerChart({super.key, required this.tickerCode});

  @override
  Widget build(BuildContext context) {
    if (tickerCode.isEmpty) {
      return const Center(child: Text('Please select a ticker'));
    }
    late final List<CryptoTicker> chartData;
    switch (tickerCode) {
      case 'ETH-USD':
        chartData = context.select((CryptoTickerBloc bloc) => bloc.state.ETHUSDTickers);
        break;
      case 'BTC-USD':
        chartData = context.select((CryptoTickerBloc bloc) => bloc.state.BTCUSDTickers);
        break;
    }
    return Center(
      child: SfCartesianChart(
        primaryXAxis: DateTimeAxis(
          interval: 10,
          dateFormat: DateFormat.Hms(),
        ),
        series: <FastLineSeries<CryptoTicker, DateTime>>[
          FastLineSeries<CryptoTicker, DateTime>(
            dataSource: chartData,
            yValueMapper: (CryptoTicker ticker, _) => double.parse(ticker.lastPrice),
            xValueMapper: (CryptoTicker ticker, _) => ticker.timestamp,
          ),
        ],
      ),
    );
  }
}