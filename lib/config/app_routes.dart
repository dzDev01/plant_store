import 'package:flutter/material.dart';
import 'package:plant_store/presentation/screens/login_screen.dart';
import 'package:plant_store/presentation/screens/main_screen.dart';
import 'package:plant_store/presentation/screens/sign_up_screen.dart';
import 'package:plant_store/presentation/screens/welcome_screen.dart';

import '../constants/strings.dart';

class AppRoutes {
  AppRoutes();

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case welcomeScreenString:
        return MaterialPageRoute(
          builder: (context) => WelcomeScreen(),
        );
      case loginScreenString:
        return MaterialPageRoute(
          builder: (context) => LoginScreen(),
        );
      case signUpScreenString:
        return MaterialPageRoute(
          builder: (context) => SignUpScreen(),
        );
      // Route For Home Screen
      case mainScreen:
        return MaterialPageRoute(
          builder: (context) => MainScreen(),
        );
    }
  }
}
