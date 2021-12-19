import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:todos/src/core/base/usecase.dart';
import 'package:todos/src/features/todo_list/domain/usecases/get_todos_usecase.dart';
import 'package:todos/src/features/todo_list/presentation/controllers/todo_list_bloc/todo_list_state.dart';

@injectable
class TodoListCubit extends Cubit<TodoListState> {
  TodoListCubit(GetTodosUseCase getTodosUseCase)
      : _getTodosUseCase = getTodosUseCase,
        super(TodoListState.initial());

  final GetTodosUseCase _getTodosUseCase;

  Future<void> getTodos() async {
    emit(TodoListState.pageLoading());

    final todosEither = await _getTodosUseCase(NoParams());
    todosEither.fold(
      (failure) {
        emit(TodoListState.failure(failure));
      },
      (todos) {
        emit(TodoListState.loaded(todos));
      },
    );
  }
}
