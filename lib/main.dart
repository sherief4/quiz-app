import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app/core/di/injection.dart';
import 'package:quiz_app/core/helpers/bloc_observer.dart';
import 'package:quiz_app/core/helpers/cache_helper.dart';
import 'package:quiz_app/core/styles/colors_manager.dart';
import 'package:quiz_app/root/quiz_app.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: ColorsManager.primaryColor,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.light,
    ),
  );
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((
    _,
  ) async {
    await EasyLocalization.ensureInitialized();
    await ScreenUtil.ensureScreenSize();
    await setUpInjector();
    await CacheHelper.init();
    Bloc.observer = MyBlocObserver();
    runApp(
      EasyLocalization(
        supportedLocales: const [Locale('ar'), Locale('en')],
        startLocale: const Locale('en'),
        saveLocale: true,
        path: 'assets/translations',
        child: const QuizApp(),
      ),
    );
  });
}
