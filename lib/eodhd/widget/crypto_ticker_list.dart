import 'package:eodhd_monitor/eodhd/eodhd.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CryptoTickerList extends StatefulWidget {
  const CryptoTickerList({super.key});

  @override
  State<CryptoTickerList> createState() => _CryptoTickerListState();
}

class _CryptoTickerListState extends State<CryptoTickerList> with WidgetsBindingObserver {
  
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    print('AppLifecycleState in _CryptoTickerListState: $state');
    if (state == AppLifecycleState.resumed) {
      context.read<CryptoTickerBloc>().add(const SubscribedCryptoTicker(tickerCode: 'ETH-USD,BTC-USD'));
    } else if (state == AppLifecycleState.paused) {
      context.read<CryptoTickerBloc>().add(const UnsubscribedCryptoTicker(tickerCode: 'ETH-USD,BTC-USD', closeChannel: true));
    } 
  }
  var _expandedIndex = -1;
  @override
  Widget build(BuildContext context) {
    final List<CryptoTicker> stockData = [];
    context.select((CryptoTickerBloc bloc) => bloc.state.tickersMap)
      .forEach((key, value) {
        stockData.add(value.last);
      });
    if (stockData.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }
    return ListView.builder(
      itemCount: stockData.length,
      itemBuilder: (context, index) => StockCard(
        stock: stockData[index], 
        isExpanded: index == _expandedIndex,
        onTap: () {
          setState(() {
            _expandedIndex = index == _expandedIndex ? -1 : index;
          });
        },
      ), 
    );
  }
}