import 'package:dartz/dartz.dart';
import 'package:todos/src/core/errors/failure.dart';
import 'package:todos/src/features/todo_list/domain/entities/todo.dart';

abstract class TodoRepository {
  Future<Either<Failure, List<Todo>>> getTodos();
}
