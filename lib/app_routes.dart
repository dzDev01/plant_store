import 'package:flutter/material.dart';
import 'package:plant_store/presentation/screens/main_screen.dart';

import 'constants/strings.dart';

class AppRoutes {
  AppRoutes();

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // Route For Home Screen
      case mainScreen:
        return MaterialPageRoute(
          builder: (context) => MainScreen(),
        );
    }
  }
}
