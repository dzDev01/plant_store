import 'package:flutter/material.dart';
import 'package:plant_store/features/auth/presentation/view/login_screen.dart';
import 'package:plant_store/features/home/presentation/view/main_screen.dart';
import 'package:plant_store/features/auth/presentation/view/sign_up_screen.dart';
import 'package:plant_store/features/splash/presentation/view/welcome_screen.dart';

import '../constants/strings.dart';

class AppRoutes {
  AppRoutes();

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case welcomeScreenString:
        return MaterialPageRoute(
          builder: (context) => const WelcomeScreen(),
        );
      case loginScreenString:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );
      case signUpScreenString:
        return MaterialPageRoute(
          builder: (context) => SignUpScreen(),
        );
      // Route For Home Screen
      case mainScreen:
        return MaterialPageRoute(
          builder: (context) => const MainScreen(),
        );
    }
    return null;
  }
}
