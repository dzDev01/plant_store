import 'package:flutter/material.dart';
import 'package:plant_store/core/utils/constants/app_colors.dart';

class AppButtonWidget extends StatelessWidget {
  final Color buttonColor;
  final String title;
  final Color titleColor;
  final Function() onTap;
  final bool useBorder;
  final Widget? widget;

  AppButtonWidget({
    Key? key,
    required this.buttonColor,
    required this.title,
    required this.titleColor,
    required this.onTap,
    required this.useBorder,
    this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 48,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(28),
          border: useBorder
              ? Border.all(color: AppColors.appGreen500, width: 2)
              : Border.all(color: Colors.transparent),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                color: titleColor,
                fontSize: 16,
                fontFamily: "MerriWeather",
              ),
            ),
            const SizedBox(width: 10),
            widget == null ? Container() : widget!,
          ],
        ),
      ),
    );
  }
}
