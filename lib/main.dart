import 'package:flutter/material.dart';
import 'package:plant_store/config/app_routes.dart';
import 'package:plant_store/config/theme.dart';

void main() {
  runApp(
    PlantStoreApp(
      appRoutes: AppRoutes(),
    ),
  );
}

class PlantStoreApp extends StatelessWidget {
  final AppRoutes appRoutes;

  const PlantStoreApp({super.key, required this.appRoutes});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: myTheme(),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRoutes.generateRoute,
    );
  }
}
