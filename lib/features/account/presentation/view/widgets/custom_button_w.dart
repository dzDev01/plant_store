import 'package:flutter/material.dart';
import 'package:plant_store/core/utils/constants/app_colors.dart';

class CustomAccountButton extends StatelessWidget {
  final String text;
  final Function() onTap;
  const CustomAccountButton(
      {super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        alignment: Alignment.center,
        height: 55,
        width: 264,
        decoration: BoxDecoration(
            color: AppColors.appGreen100,
            border: Border.all(color: AppColors.appGreen700),
            borderRadius: BorderRadius.circular(20)),
        child: Text(text,
            style: const TextStyle(
                color: AppColors.appGreen700,
                fontSize: 16,
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}
