import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:quiz_app/core/router/app_router.dart';
import 'package:quiz_app/core/router/routes.dart';
import 'package:quiz_app/core/styles/app_theme.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  @override
  Widget build(BuildContext context) {
    List<LocalizationsDelegate> customLocalizationDelegates = [
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ];
    customLocalizationDelegates.addAll(context.localizationDelegates);
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: true,
          theme: AppTheme.theme,
          initialRoute: Routes.splash,
          navigatorKey: QuizApp.navigatorKey,
          onGenerateRoute: AppRouter.generateRoute,
          title: "Restaurant POS",
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          builder: (context, widget) {
            return MediaQuery(
              data: MediaQuery.of(
                context,
              ).copyWith(textScaler: const TextScaler.linear(1.0)),
              child: widget!,
            );
          },
        );
      },
    );
  }
}
