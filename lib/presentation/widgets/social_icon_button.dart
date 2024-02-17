import 'package:flutter/material.dart';
import 'package:plant_store/constants/app_colors.dart';

class SocialIconButton extends StatelessWidget {
  final String iconPath;
  final Function()? onTap;

  const SocialIconButton({
    super.key,
    required this.iconPath,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onTap,
      child: Container(
        width: deviceWidth * 0.20,
        height: deviceWidth * 0.15,
        padding: EdgeInsets.all(deviceWidth * 0.03),
        decoration: BoxDecoration(
          color: AppColors.appGrey,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Image(
          image: AssetImage(iconPath),
        ),
      ),
    );
  }
}
