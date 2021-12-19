import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:todos/src/di/injection.config.dart';

final getIt = GetIt.instance;

@injectableInit
void configureDependencies() {
  String env = Environment.dev;
  if (kReleaseMode) {
    env = Environment.prod;
  }
  $initGetIt(getIt, environment: env);
}
