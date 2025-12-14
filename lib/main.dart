import 'dart:async';

import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

import 'core/app.dart';
import 'core/services/app_logger.dart';
import 'di/injection_container.dart';
import 'firebase_options.dart';

Future<void> main() async => runMainApp();

Future<void> runMainApp() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((value) {
    // FirebaseAppCheck.instance.activate(webRecaptchaSiteKey: 'recaptcha-v3-site-key');
  });

  // Initialize dependency injection
  await initDependencyInjection();

  // Initialize Hydrated Storage
  final storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getApplicationDocumentsDirectory(),
  );
  HydratedBloc.storage = storage;

  // Set up error handling
  FlutterError.onError = (details) {
    AppLogger.instance.log(
      details.exceptionAsString(),
      logLevel: LogLevel.error,
      stackTrace: details.stack,
    );
    // FirebaseCrashlytics.instance.recordFlutterError(details);
  };

  // Set preferred orientations
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  // Run the app with error handling
  runZonedGuarded(
    () => runApp(const MainApp()),
    (error, stackTrace) => AppLogger.instance.log(
      error.toString(),
      logLevel: LogLevel.error,
      stackTrace: stackTrace,
    ),
  );
}
