import 'package:todos/src/core/errors/failure.dart';

class LocationFailure extends Failure {
  LocationFailure({
    String? message,
  }) : super(
    message: message,
  );
}
