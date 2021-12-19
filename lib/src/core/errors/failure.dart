import 'package:flutter/cupertino.dart';
import 'package:todos/src/core/errors/exceptions/connection_exception.dart';
import 'package:todos/src/core/errors/exceptions/server_exception.dart';
import 'package:todos/src/core/errors/failures/connection_failure.dart';
import 'package:todos/src/core/errors/failures/location_failure.dart';
import 'package:todos/src/core/errors/failures/server_failure.dart';
import 'package:todos/src/core/errors/failures/unexpected_failure.dart';

abstract class Failure {
  final String? message;

  Failure({this.message});

  factory Failure.fromException(final Exception exception) {
    if (exception is ServerException) {
      return ServerFailure(message: exception.message);
    }

    if (exception is ConnectionException) {
      return ConnectionFailure();
    }

    return UnexpectedFailure(message: 'خطای ناشناخته رخ داده است');
  }

  factory Failure.fromThrowable(final throwable) {
    if (throwable is Exception) {
      return Failure.fromException(throwable);
    }
    return UnexpectedFailure(message: 'خطای ناشناخته رخ داده است');
  }

  String getLocalizedMessage(BuildContext context) {
    if (message != null) {
      return message!;
    } else {
      if (this is ConnectionFailure) {
        return 'اتصال اینترنت شما قطع میباشد';
      } else if (this is LocationFailure) {
        return 'خطا در دسترسی به موقعیت مکانی';
      }
      return 'خطای ناشناخته رخ داده است';
    }
  }
}
