import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todos/src/core/errors/failure.dart';
import 'package:todos/src/features/todo_list/domain/entities/todo.dart';

part 'todo_list_state.freezed.dart';

@freezed
class TodoListState with _$TodoListState {
  factory TodoListState.initial() = _TodoListInitialState;

  factory TodoListState.pageLoading() = _TodoListPageLoadingState;

  factory TodoListState.loaded(List<Todo> todos) = _TodoListLoadedState;

  factory TodoListState.failure(Failure failure) = _TodoListFailureState;
}
