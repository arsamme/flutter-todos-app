import 'package:injectable/injectable.dart';
import 'package:todos/src/core/network/dio_client.dart';
import 'package:todos/src/features/todo_list/data/datasources/remote/todo_remote_data_source.dart';
import 'package:todos/src/features/todo_list/data/models/todo_model.dart';

@LazySingleton(as: TodoRemoteDataSource)
class TodoRemoteDataSourceImpl implements TodoRemoteDataSource {
  TodoRemoteDataSourceImpl(DioClient dioClient) : _dio = dioClient;

  final DioClient _dio;

  @override
  Future<List<TodoModel>> getTodos() async {
    final response = await _dio.get('cdd00c8f-d64a-4411-914d-f1c9236c6710');
    final todos = (response!.data['todos'] as Iterable);
    return todos.map((todo) {
      return TodoModel.fromJson(todo);
    }).toList();
  }
}
