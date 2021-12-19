// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i3;
import 'package:todos/src/features/todo_list/presentation/pages/todo_list_page.dart'
    as _i1;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i3.GlobalKey<_i3.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    TodoListPageRoute.name: (routeData) {
      return _i2.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.TodoListPage());
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig('/#redirect',
            path: '/', redirectTo: '', fullMatch: true),
        _i2.RouteConfig(TodoListPageRoute.name, path: '')
      ];
}

/// generated route for
/// [_i1.TodoListPage]
class TodoListPageRoute extends _i2.PageRouteInfo<void> {
  const TodoListPageRoute() : super(TodoListPageRoute.name, path: '');

  static const String name = 'TodoListPageRoute';
}
