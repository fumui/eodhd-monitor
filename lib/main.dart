import 'package:bloc/bloc.dart';
import 'package:eodhd_monitor/eodhd/view/crypto_ticker_page.dart';
import 'package:eodhd_monitor/simple_bloc_observer.dart';
import 'package:flutter/material.dart';

void main() {
  Bloc.observer = const SimpleBlocObserver();
  runApp(const MainApp());
}

class MainApp extends MaterialApp {
  const MainApp({super.key}) : super(home: const CryptoTickerPage());
}
