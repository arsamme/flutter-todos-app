import 'package:todos/src/core/errors/failure.dart';

class ConnectionFailure extends Failure{
  ConnectionFailure({String? message}): super(message: message);
}
