import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todos/src/styles/ui_colors.dart';
import 'package:todos/src/utils/extensions/context_extension.dart';

class WeekCalendarWidget extends StatelessWidget {
  const WeekCalendarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentDate = DateTime.now();
    final startOfWeek = currentDate.subtract(
      Duration(days: currentDate.weekday - 1),
    );
    DateTime.monday;

    final children = <Widget>[];
    for (int i = 0; i < 7; i++) {
      final date = startOfWeek.add(Duration(days: i));
      final weekday = date.weekday;
      String weekdayName = DateFormat('EEE').format(date);

      final isCurrentDate = weekday == currentDate.weekday;
      final textStyle = context.textTheme.bodyText2?.copyWith(
        color: isCurrentDate ? Colors.white : Colors.black,
      );
      final widget = Expanded(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: isCurrentDate ? UIColors.green : Colors.transparent,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                weekdayName,
                style: textStyle,
              ),
              const SizedBox(height: 4),
              Text(
                date.day.toString(),
                style: textStyle,
              ),
            ],
          ),
        ),
      );
      children.add(widget);
    }
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 16,
      ),
      child: Row(
        children: children,
      ),
    );
  }
}
