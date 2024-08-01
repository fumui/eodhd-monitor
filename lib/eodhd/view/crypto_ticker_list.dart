// import 'package:eodhd_monitor/eodhd/bloc/crypto_ticker_bloc.dart';
// import 'package:eodhd_monitor/eodhd/widget/crypto_ticker_list_item.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class CryptoTickerList extends StatefulWidget {
//   const CryptoTickerList({super.key});

//   @override
//   State<CryptoTickerList> createState() => _CryptoTickerListState();
// }

// class _CryptoTickerListState extends State<CryptoTickerList> {
//   final _scrollController = ScrollController();

//   @override
//   void initState() {
//     super.initState();
//     context.read<CryptoTickerBloc>().add(const SubscribedCryptoTicker(tickerCode: 'ETH-USD'));
//   }

//   @override
//   void dispose() {
//     _scrollController.dispose();
//     context.read<CryptoTickerBloc>().add(const UnsubscribedCryptoTicker(tickerCode: 'ETH-USD'));
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<CryptoTickerBloc, CryptoTickerState>(
//       builder: (context, state) {
//         return ListView.builder(
//           controller: _scrollController,
//           itemCount: state.tickers.length,
//           reverse: true,
//           itemBuilder: (_, index) => CryptoTickerListItem(ticker: state.tickers[index]),
//         );
//       }, 
//     );
//   }
// }