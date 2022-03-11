
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  // if (kDebugMode) {
  //   await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(false);
  //   await FirebasePerformance.instance.setPerformanceCollectionEnabled(false);
  // }

  // await dotenv.load(
  //     fileName: kDebugMode ? 'environments/debug.env' : 'environments/.env');

  // await runZonedGuarded(() async {
  //   FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
  //
  //   ErrorWidget.builder = (FlutterErrorDetails error) {
  //     Zone.current.handleUncaughtError(error.exception, error.stack!);
  //     return ErrorWidget(error.exception);
  //   };
  //
  //
  // }, (exception, stackTrace) {
  //   FirebaseCrashlytics.instance.recordError(exception, stackTrace);
  // });
  runApp(const MyApp());
}
