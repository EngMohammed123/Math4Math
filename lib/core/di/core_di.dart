import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../data/api_manager.dart';

// This class is deprecated and not used anymore
// All dependency injection is now handled in injection_container.dart
// Keeping this for backward compatibility only

class CoreDI {
  CoreDI(this.di) {
    call();
  }

  final GetIt di;

  void call() {
    final List<Interceptor> interceptors = [];
    // if (AppLogger.instance.aliceInterceptor != null) {
    //   interceptors.add(AppLogger.instance.aliceInterceptor!);
    // }
    di.registerLazySingleton(
      () => APIsManager(
        interceptors: interceptors,
      ),
    );
    // PreferencesCubit registration moved to injection_container.dart
  }
}
