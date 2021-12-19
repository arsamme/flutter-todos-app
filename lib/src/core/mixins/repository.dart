import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart' show debugPrintStack, kDebugMode;
import 'package:todos/src/core/errors/failure.dart';

mixin Repository {
  Future<Either<Failure, T>> attemptTask<T>(Function0<Future<T>> run) {
    return Task(run).attempt().map((either) {
      return either.leftMap((left) {
        if (kDebugMode && left is Error) {
          debugPrintStack(stackTrace: left.stackTrace);
        }
        return Failure.fromThrowable(left);
      });
    }).run();
  }
}
