import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:todos/src/core/errors/failure.dart';
import 'package:todos/src/core/mixins/repository.dart';
import 'package:todos/src/features/todo_list/data/datasources/remote/todo_remote_data_source.dart';
import 'package:todos/src/features/todo_list/domain/entities/todo.dart';
import 'package:todos/src/features/todo_list/domain/repositories/todo_repository.dart';

@LazySingleton(as: TodoRepository)
class TodoRepositoryImpl with Repository implements TodoRepository {
  TodoRepositoryImpl(TodoRemoteDataSource remoteDataSource)
      : _remoteDataSource = remoteDataSource;

  final TodoRemoteDataSource _remoteDataSource;

  @override
  Future<Either<Failure, List<Todo>>> getTodos() {
    return attemptTask(() => _remoteDataSource.getTodos());
  }
}
