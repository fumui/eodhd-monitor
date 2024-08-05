import 'package:eodhd_monitor/eodhd/eodhd.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CryptoTickerPage extends StatelessWidget {
  const CryptoTickerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crypto Ticker', style: TextStyle(color: Colors.white)),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: BlocProvider(
        create: (_) =>  CryptoTickerBloc()..add(const SubscribedCryptoTicker(tickerCode: 'ETH-USD,BTC-USD')),
        child: const Column(
          children: <Widget>[
            Expanded(
              child: CryptoTickerList(),
            ),
          ],
        ),
      ),
    );
  }
}