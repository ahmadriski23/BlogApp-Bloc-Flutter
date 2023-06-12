import 'package:bloc_app/presentation/router/router_imports.dart';
import 'package:flutter/material.dart';

import 'core/constants/my_strings.dart';
import 'core/themes/app_themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();
  // *
  // ?
  // TODO
  // !
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: MyStrings.appName,
      theme: AppThemes.light,
      darkTheme: AppThemes.dark,
      routerConfig: _appRouter.config(),
    );
  }
}

HomePage() {}
