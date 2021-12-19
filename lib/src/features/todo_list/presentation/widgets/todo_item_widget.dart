import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:todos/src/features/todo_list/domain/entities/todo.dart';
import 'package:todos/src/utils/extensions/context_extension.dart';
import 'package:todos/src/utils/extensions/string_extension.dart';

class TodoItemWidget extends StatelessWidget {
  const TodoItemWidget({
    Key? key,
    required this.todo,
  }) : super(key: key);

  final Todo todo;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: todo.color.toColor(),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  todo.time,
                  style: context.textTheme.bodyText1?.copyWith(
                    color: Colors.white,
                  ),
                ),
                Text(
                  todo.title,
                  style: context.textTheme.bodyText1?.copyWith(
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(width: 10),
          Icon(
            todo.done ? FeatherIcons.checkCircle : FeatherIcons.circle,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
