import 'package:eodhd_monitor/eodhd/eodhd.dart';
import 'package:eodhd_monitor/eodhd/widget/crypto_ticker_chart.dart';
import 'package:eodhd_monitor/eodhd/widget/crypto_ticker_table.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class CryptoTickerPage extends StatelessWidget {
  const CryptoTickerPage({super.key});

  @override
  Widget build(BuildContext context) {
    final channel = WebSocketChannel.connect(
      Uri.parse('wss://ws.eodhistoricaldata.com/ws/crypto?api_token=demo'),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Crypto Ticker'),
      ),
      body: BlocProvider(
        create: (_) =>  CryptoTickerBloc(wsChannel: channel)..add(const SubscribedCryptoTicker(tickerCode: 'ETH-USD,BTC-USD')),
        child: const Column(
          children: <Widget>[
            Expanded(
              child: CryptoTickerTable(),
            ),
            Expanded(
              child: CryptoTickerChart(tickerCode: 'ETH-USD'),
            ),
            Expanded(
              child: CryptoTickerChart(tickerCode: 'BTC-USD'),
            ),
          ],
        ),
      ),
    );
  }
}