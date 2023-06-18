import 'package:bloc_app/presentation/router/router_imports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    return ScreenUtilInit(
        designSize: Size(390, 844),
        minTextAdapt: true,
        splitScreenMode: true,
        useInheritedMediaQuery: true,
        builder: (context, child) {
          return MaterialApp.router(
            title: MyStrings.appName,
            theme: AppThemes.light,
            darkTheme: AppThemes.dark,
            routerConfig: _appRouter.config(),
          );
        });
  }
}

HomePage() {}
