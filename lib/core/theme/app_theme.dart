import 'package:blog/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static OutlineInputBorder _border({Color color =AppPallete.borderColor}) => OutlineInputBorder(
        borderSide: BorderSide(
          color: color,
          width: 2
        )
      );
  static final darkThemeMode = ThemeData.dark().copyWith(
    appBarTheme: AppBarTheme(backgroundColor: AppPallete.backgroundColor),
    scaffoldBackgroundColor: AppPallete.backgroundColor,
    inputDecorationTheme:InputDecorationTheme(
      contentPadding: EdgeInsets.all(7),
      enabledBorder:_border(),
      focusedBorder: _border(color: AppPallete.gradient2)
    )
  );
}