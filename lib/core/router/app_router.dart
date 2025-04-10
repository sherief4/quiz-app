import 'package:flutter/material.dart';
import 'package:quiz_app/core/router/routes.dart';
import 'package:quiz_app/features/intro/views/splash/splash_page.dart';

class AppRouter {
  static Route? generateRoute(RouteSettings settings) {
    // final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (_) => const SplashPage());
      default:
        return null;
    }
  }
}
