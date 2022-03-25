import 'package:flutter/material.dart';
import 'package:mvvm_skeleton/src/presentation/resources/routes_manager.dart';
import 'package:mvvm_skeleton/src/presentation/resources/theme_manager.dart';

class MyApp extends StatefulWidget {
  // const MyApp({Key? key}) : super(key: key);
  const MyApp._internal();
  static const MyApp instance = MyApp._internal();
  factory MyApp() => instance;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.splashRoute,
      theme: CustomTheme.getLightTheme(),
    );
  }
}
