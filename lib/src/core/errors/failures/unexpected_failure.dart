import 'package:todos/src/core/errors/failure.dart';

class UnexpectedFailure extends Failure {
  UnexpectedFailure({
    String? message,
  }) : super(
    message: message,
  );
}
