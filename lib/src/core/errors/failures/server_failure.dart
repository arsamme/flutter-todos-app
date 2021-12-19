import 'package:todos/src/core/errors/failure.dart';

class ServerFailure extends Failure {
  ServerFailure({
    String? message,
  }) : super(
          message: message,
        );
}
