import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:todos/src/core/network/dio_client.dart';
import 'package:todos/src/features/todo_list/data/datasources/remote/impl/todo_remote_data_source_impl.dart';
import 'package:todos/src/features/todo_list/data/models/todo_model.dart';

import '../../../../../fixtures/fixture_reader.dart';
import 'todo_remote_data_source_test.mocks.dart';

@GenerateMocks([DioClient])
void main() {
  late TodoRemoteDataSourceImpl remoteDataSource;
  late MockDioClient mockDioClient;

  setUp(() {
    mockDioClient = MockDioClient();
    remoteDataSource = TodoRemoteDataSourceImpl(mockDioClient);
  });

  void setUpMockDioClientSuccess200() {
    when(mockDioClient.get(any)).thenAnswer(
      (_) async => Response(
        requestOptions: RequestOptions(path: '/'),
        data: json.decode(fixture('todos.json')),
        statusCode: 200,
      ),
    );
  }

  test('should return list of Todos when response code is 200', () async {
    // arrange
    setUpMockDioClientSuccess200();
    final todos = (json.decode(fixture('todos.json'))['todos'] as Iterable)
        .map((e) => TodoModel.fromJson(e))
        .toList();
    // act
    final result = await remoteDataSource.getTodos();
    // assert
    expect(result, equals(todos));
  });
}
