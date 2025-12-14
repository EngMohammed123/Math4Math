import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dio/dio.dart';

import '../data/repositories/preferences_repository.dart';
import '../data/api_manager.dart';
import '../domain/usecases/preferences_usecases.dart';
import '../logic/preferences_cubit/preferences_cubit.dart';

final di = GetIt.instance;

Future<void> initDependencyInjection() async {
  // Register SharedPreferences
  final sharedPreferences = await SharedPreferences.getInstance();
  di.registerLazySingleton<SharedPreferences>(() => sharedPreferences);

  // Register API Manager
  final List<Interceptor> interceptors = [];
  di.registerLazySingleton(() => APIsManager(interceptors: interceptors));

  // Register repositories
  di.registerLazySingleton<PreferencesRepository>(
    () => PreferencesRepositoryImpl(di<SharedPreferences>()),
  );

  // Register use cases
  di.registerLazySingleton(
      () => ChangeLanguageUseCase(di<PreferencesRepository>()));
  di.registerLazySingleton(
      () => GetLanguageUseCase(di<PreferencesRepository>()));
  di.registerLazySingleton(
      () => ToggleThemeUseCase(di<PreferencesRepository>()));
  di.registerLazySingleton(() => GetThemeUseCase(di<PreferencesRepository>()));

  // Register cubits
  di.registerFactory(() => PreferencesCubit(
        di<ChangeLanguageUseCase>(),
        di<GetLanguageUseCase>(),
        di<ToggleThemeUseCase>(),
        di<GetThemeUseCase>(),
      ));
}
