import 'package:flutter/material.dart';
import 'package:plant_store/presentation/screens/home_screen.dart';

import 'constants/strings.dart';

class AppRoutes {
  AppRoutes();

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // Route For Home Screen
      case homeScreen:
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );
    }
  }
}
