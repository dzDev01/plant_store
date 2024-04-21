import 'package:flutter/material.dart';
import 'package:plant_store/core/utils/constants/app_colors.dart';

class WelcomeTextW extends StatelessWidget {
  const WelcomeTextW({super.key});

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Hello,",
              style: TextStyle(
                fontSize: 32,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 80),
            child: Text("Sofia!",
                style: TextStyle(
                    fontSize: 40,
                    color: AppColors.appGreen700,
                    fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
