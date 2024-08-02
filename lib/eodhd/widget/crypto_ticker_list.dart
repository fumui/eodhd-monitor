import 'package:eodhd_monitor/eodhd/eodhd.dart';
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