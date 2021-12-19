import 'package:equatable/equatable.dart';

class Todo extends Equatable {
  const Todo({
    required this.time,
    required this.title,
    required this.color,
    required this.done,
  });

  final String time;
  final String title;
  final String color;
  final bool done;

  @override
  List<Object?> get props => [time, title, color, done];
}
