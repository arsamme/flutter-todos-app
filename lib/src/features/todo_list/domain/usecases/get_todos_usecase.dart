import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:todos/src/core/base/usecase.dart';
import 'package:todos/src/core/errors/failure.dart';
import 'package:todos/src/features/todo_list/domain/entities/todo.dart';
import 'package:todos/src/features/todo_list/domain/repositories/todo_repository.dart';

@lazySingleton
class GetTodosUseCase extends UseCase<List<Todo>, NoParams> {
  GetTodosUseCase(TodoRepository todoRepository)
      : _todoRepository = todoRepository;

  final TodoRepository _todoRepository;

  @override
  Future<Either<Failure, List<Todo>>> call(NoParams params) {
    return _todoRepository.getTodos();
  }
}
