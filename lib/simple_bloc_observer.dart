import 'package:bloc/bloc.dart';

/// {@template counter_observer}
/// [BlocObserver] for the counter application which
/// observes all state changes.
/// {@endtemplate}
class SimpleBlocObserver extends BlocObserver {
  /// {@macro counter_observer}
  const SimpleBlocObserver();

  @override
  void onChange(BlocBase<dynamic>  bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    // ignore: avoid_print
    print('${bloc.runtimeType} $change');
  }

  @override
  void onTransition(
    Bloc<dynamic, dynamic> bloc,
    Transition<dynamic, dynamic> transition,
  ) {
    super.onTransition(bloc, transition);
    // ignore: avoid_print
    print(transition);
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    // ignore: avoid_print
    print(error);
    super.onError(bloc, error, stackTrace);
  }
}