import 'package:flutter/material.dart';
import 'package:mvvm_skeleton/src/presentation/login/login.dart';
import 'package:mvvm_skeleton/src/presentation/main/home/home_page.dart';
import 'package:mvvm_skeleton/src/presentation/main/main.dart';
import 'package:mvvm_skeleton/src/presentation/main/tips_page.dart';
import 'package:mvvm_skeleton/src/presentation/main/settings_page.dart';
import 'package:mvvm_skeleton/src/presentation/register/register.dart';
import 'package:mvvm_skeleton/src/presentation/resources/strings_manager.dart';
import 'package:mvvm_skeleton/src/presentation/splash/splash.dart';

class Routes {
  static const String splashRoute = "/";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String mainRoute = "/main";
  static const String homeRoute = "/home";
  static const String audit = "/audit";
  static const String settingsRoute = "/settings";
  static const String seasonsRoute = "/tips";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    return MaterialPageRoute(
        settings: routeSettings,
        builder: (BuildContext context) {
          switch (routeSettings.name) {
            case Routes.splashRoute:
              return const SplashView();
            case Routes.loginRoute:
              return const LoginView();
            case Routes.registerRoute:
              return const RegisterView();
            case Routes.mainRoute:
              return const MainView();
            case Routes.homeRoute:
              return const HomePage();
            case Routes.settingsRoute:
              return const SettingsPage();
            case Routes.seasonsRoute:
              return const TipsPage();
            default:
              return unDefinedRoute();
          }
        });
  }

  static Widget unDefinedRoute() {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.noRouteFound),
      ),
      body: const Center(child: Text(AppStrings.noRouteFound)),
    );
  }
}
