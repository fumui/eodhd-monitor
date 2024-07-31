import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:eodhd_monitor/eodhd/eodhd.dart';
import 'package:stream_transform/stream_transform.dart';

part 'crypto_ticker_event.dart';
part 'crypto_ticker_state.dart';