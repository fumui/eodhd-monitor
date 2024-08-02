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
      return const Center(child: Text('Please add a ticker'));
    }
    final List<CryptoTicker> chartData = context.select((CryptoTickerBloc bloc) => bloc.state.tickersMap[tickerCode] ?? []);
    return Center(
      child: SfCartesianChart(
        // enableAxisAnimation: true,
        primaryXAxis: DateTimeAxis(
          interval: 10,
          dateFormat: DateFormat.ms(),
          majorGridLines: const MajorGridLines(width: 1, dashArray: [1,5], color: Colors.grey),
          majorTickLines: const MajorTickLines(size: 5, width: 2, color: Colors.grey),
          minorGridLines: const MinorGridLines(width: 1, dashArray: [1,5], color: Colors.grey),
        ),
        primaryYAxis: const NumericAxis(
          majorGridLines: MajorGridLines(width: 1, dashArray: [1,5], color: Colors.grey),
          majorTickLines: MajorTickLines(size: 5, width: 2, color: Colors.grey),
          minorGridLines: MinorGridLines(width: 1, dashArray: [1,5], color: Colors.grey),
        ),
        series: <FastLineSeries<CryptoTicker, DateTime>>[
          FastLineSeries<CryptoTicker, DateTime>(
            dataSource: chartData,
            yValueMapper: (CryptoTicker ticker, _) => double.parse(ticker.lastPrice),
            xValueMapper: (CryptoTicker ticker, _) => ticker.timestamp,
          ),
        ],
        zoomPanBehavior: ZoomPanBehavior(
          enablePinching: true,
          enablePanning: true,
          enableSelectionZooming: true,
          zoomMode: ZoomMode.x,
        ),
      ),
    );
  }
}