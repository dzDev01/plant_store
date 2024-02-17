import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

ThemeData myTheme() {
  return ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.appGreen700),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
    textTheme: textTheme(),
    fontFamily: "Merriweather"
  );
}

TextTheme textTheme() {
  return const TextTheme(
    displaySmall: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    displayMedium: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
    displayLarge: TextStyle(fontSize: 50),
    bodySmall: TextStyle(fontSize: 12),
    bodyMedium: TextStyle(fontSize: 14),
    bodyLarge: TextStyle(fontSize: 24),
  );
}
