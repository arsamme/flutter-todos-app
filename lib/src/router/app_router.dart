import 'package:auto_route/auto_route.dart';
import 'package:todos/src/features/todo_list/presentation/pages/todo_list_page.dart';

@AdaptiveAutoRouter(
  preferRelativeImports: false,
  routes: <AutoRoute>[
    AutoRoute(
      path: '',
      initial: true,
      page: TodoListPage,
    ),
  ],
)
class $AppRouter {}
