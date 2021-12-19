import 'package:json_annotation/json_annotation.dart';
import 'package:todos/src/features/todo_list/domain/entities/todo.dart';

part 'todo_model.g.dart';

@JsonSerializable()
class TodoModel extends Todo {
  const TodoModel({
    required String time,
    required String title,
    required String color,
    required bool done,
  }) : super(
          time: time,
          title: title,
          color: color,
          done: done,
        );

  factory TodoModel.fromJson(Map<String, dynamic> json) =>
      _$TodoModelFromJson(json);
}
