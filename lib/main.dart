import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:nil/nil.dart';
import 'package:todos/src/di/injection.dart';
import 'package:todos/src/router/app_router.gr.dart';
import 'package:todos/src/styles/app_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  configureDependencies();
  runApp(TodosApp());
}

class TodosApp extends StatelessWidget {
  TodosApp({Key? key}) : super(key: key);

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: const Locale('fa', 'IR'),
      title: 'todos',
      theme: AppTheme.light(fontFamily: 'poppins'),
      builder: (context, child) {
        return child ?? nil;
      },
    );
  }
}

