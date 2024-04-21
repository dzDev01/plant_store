import 'package:flutter/material.dart';
import 'package:plant_store/core/utils/constants/app_colors.dart';
import 'package:plant_store/core/utils/constants/constants.dart';

class CustomAppBarAccountW extends StatelessWidget {
  const CustomAppBarAccountW({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 50,
        ),
        Center(
          child: Text(
            "Flowerfly!",
            style: TextStyle(
                fontFamily: kPacificoFont,
                fontSize: 40,
                color: AppColors.appGreen700),
          ),
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
