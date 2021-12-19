import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nil/nil.dart';
import 'package:todos/src/di/injection.dart';
import 'package:todos/src/features/shared/presentation/widgets/page_loading_widget.dart';
import 'package:todos/src/features/todo_list/presentation/controllers/todo_list_bloc/todo_list_cubit.dart';
import 'package:todos/src/features/todo_list/presentation/controllers/todo_list_bloc/todo_list_state.dart';
import 'package:todos/src/features/todo_list/presentation/widgets/todo_item_widget.dart';
import 'package:todos/src/features/todo_list/presentation/widgets/week_calendar_widget.dart';
import 'package:todos/src/utils/extensions/context_extension.dart';
import 'package:intl/intl.dart';

class TodoListPage extends StatelessWidget {
  const TodoListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentDate = DateTime.now();
    String weekdayName = DateFormat('EEEE').format(currentDate);
    String formattedDate = DateFormat('dd MMM, yyyy').format(currentDate);

    return Scaffold(
      appBar: AppBar(
        title: Text(context.localization.appName),
      ),
      body: NestedScrollView(
        headerSliverBuilder: (context, _) {
          return [
            SliverToBoxAdapter(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Divider(),
                  const WeekCalendarWidget(),
                  const Divider(),
                  const SizedBox(height: 24),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          weekdayName,
                          style: context.textTheme.bodyText1,
                        ),
                        Text(
                          formattedDate,
                          style: context.textTheme.bodyText2,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ];
        },
        body: BlocProvider(
          create: (_) => getIt<TodoListCubit>()..getTodos(),
          child: BlocBuilder<TodoListCubit, TodoListState>(
            builder: (context, state) {
              return state.maybeWhen(
                loaded: (todos) {
                  return ListView.separated(
                    padding: const EdgeInsets.symmetric(
                      vertical: 24,
                      horizontal: 16,
                    ),
                    itemCount: todos.length,
                    itemBuilder: (context, index) {
                      final todo = todos[index];
                      return TodoItemWidget(todo: todo);
                    },
                    separatorBuilder: (_, __) {
                      return const SizedBox(height: 16);
                    },
                  );
                },
                failure: (failure) {
                  return Column(
                    children: [
                      Text(
                        context.localization.errorOccurred,
                        style: context.textTheme.headline3,
                      ),
                      Text(
                        failure.getLocalizedMessage(context),
                        style: context.textTheme.bodyText1,
                      ),
                    ],
                  );
                },
                orElse: () {
                  return const PageLoadingWidget();
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
