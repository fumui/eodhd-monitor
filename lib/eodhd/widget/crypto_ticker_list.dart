import 'package:eodhd_monitor/eodhd/eodhd.dart';
import 'package:eodhd_monitor/eodhd/widget/stock_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CryptoTickerList extends StatefulWidget {
  const CryptoTickerList({super.key});

  @override
  State<CryptoTickerList> createState() => _CryptoTickerListState();
}

class _CryptoTickerListState extends State<CryptoTickerList> {
  var _expandedIndex = -1;
  @override
  Widget build(BuildContext context) {
    final List<CryptoTicker> stockData = [];
    final etcusd = context.select((CryptoTickerBloc bloc) => bloc.state.ETHUSDTickers);
    if (etcusd.isNotEmpty) {
      stockData.add(etcusd.last);
    }
    final btcusd = context.select((CryptoTickerBloc bloc) => bloc.state.BTCUSDTickers);
    if (btcusd.isNotEmpty) {
      stockData.add(btcusd.last);
    }
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