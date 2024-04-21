import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:plant_store/core/utils/constants/app_colors.dart';

import '../../core/utils/config/theme.dart';

class ComplexText extends StatelessWidget {
  final String title;
  final String clickedText;
  final Function() onTap;

  const ComplexText({
    super.key,
    required this.title,
    required this.clickedText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
              text: title,
              style: myTheme()
                  .textTheme
                  .bodySmall!
                  .copyWith(color: AppColors.appGreen700)),
          TextSpan(
            text: clickedText,
            style: myTheme().textTheme.bodySmall!.copyWith(
                  color: AppColors.appGreen700,
                  decoration: TextDecoration.underline,
                  decorationColor: AppColors.appGreen700,
                ),
            recognizer: TapGestureRecognizer()..onTap = onTap,
          ),
        ],
      ),
    );
  }
}
