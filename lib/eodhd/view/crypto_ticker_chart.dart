import 'package:eodhd_monitor/eodhd/eodhd.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CryptoTickerChart extends StatefulWidget {
  const CryptoTickerChart({super.key});

  @override
  State<CryptoTickerChart> createState() => _CryptoTickerChartState();
}

class _CryptoTickerChartState extends State<CryptoTickerChart> {
  
  @override
  void initState() {
    super.initState();
    context.read<CryptoTickerBloc>().add(const SubscribedCryptoTicker(tickerCode: 'ETH-USD'));
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SfCartesianChart(
        primaryXAxis: const CategoryAxis(),
        series: <FastLineSeries<CryptoTicker, DateTime>>[
          FastLineSeries<CryptoTicker, DateTime>(
            dataSource: context.select((CryptoTickerBloc bloc) => bloc.state.tickers),
            yValueMapper: (CryptoTicker ticker, _) => double.parse(ticker.lastPrice),
            xValueMapper: (CryptoTicker ticker, _) => ticker.timestamp,
          )
        ],
      ),
    );
  }
}