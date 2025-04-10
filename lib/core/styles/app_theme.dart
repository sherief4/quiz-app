import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quiz_app/core/extenstions/ui_extenstion.dart';
import 'package:quiz_app/core/styles/colors_manager.dart';

import 'text_styles.dart';

class AppTheme {
  AppTheme._();

  static String fontFamily = "Atma";

  static ThemeData theme = ThemeData(
    iconTheme: const IconThemeData(color: ColorsManager.primaryColor),
    primaryColor: ColorsManager.primaryColor,
    fontFamily: AppTheme.fontFamily,
    scaffoldBackgroundColor: ColorsManager.shadowColor,
    textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
      overlayColor: WidgetStateProperty.all<Color>(Colors.transparent),
    )),
    appBarTheme: AppBarTheme(
      centerTitle: true,
      actionsIconTheme: const IconThemeData(color: Colors.white),
      iconTheme: const IconThemeData(color: Colors.white),
      elevation: 0,
      backgroundColor: ColorsManager.primaryColor,
      titleTextStyle:
          TextStyles.s14_medium.copyWith(color: Colors.white),
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: ColorsManager.primaryColor,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.light,
      ),
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: ColorsManager.primaryColor,
      selectionColor: ColorsManager.primaryColor.withValues(alpha: .45),
      selectionHandleColor: ColorsManager.primaryColor,
    ),
    splashFactory: NoSplash.splashFactory,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 55),
        backgroundColor: ColorsManager.primaryColor,
        shape: RoundedRectangleBorder(borderRadius: 10.br),
        elevation: 0,
        splashFactory: NoSplash.splashFactory,
      ),
    ),
    cardTheme: const CardTheme(elevation: 0),
    colorScheme: const ColorScheme.light(
        primary: ColorsManager.primaryColor, onPrimary: Colors.white),
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    hoverColor: Colors.transparent,
    useMaterial3: true,
  );
}
