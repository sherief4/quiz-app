import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app/core/di/injection.dart';
import 'package:quiz_app/core/router/routes.dart';
import 'package:quiz_app/features/intro/presentation/cubit/intro_cubit.dart';
import 'package:quiz_app/features/intro/presentation/views/splash/splash_page.dart';
import 'package:quiz_app/features/intro/presentation/views/welcome/welcome_page.dart';

class AppRouter {
  static Route? generateRoute(RouteSettings settings) {
    // final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (_) => const SplashPage());

      //------------------------------------------------------------------------

      case Routes.welcome:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => di<IntroCubit>(),
                child: const WelcomePage(),
              ),
        );

      //------------------------------------------------------------------------

      default:
        return null;
    }
  }
}
