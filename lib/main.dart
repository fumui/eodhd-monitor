import 'package:bloc/bloc.dart';
import 'package:eodhd_monitor/eodhd/eodhd.dart';
import 'package:eodhd_monitor/simple_bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:eodhd_monitor/theme.dart';

void main() {
  Bloc.observer = const SimpleBlocObserver();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    const appTheme = MaterialTheme(TextTheme());
    return MaterialApp(
      title: 'Crypto Ticker',
      theme: appTheme.light(),
      home: const CryptoTickerPage(),
    );
  }
}