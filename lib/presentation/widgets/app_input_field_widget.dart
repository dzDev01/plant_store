import 'package:flutter/material.dart';
import 'package:plant_store/config/theme.dart';
import 'package:plant_store/constants/app_colors.dart';

class AppInputFieldWidget extends StatelessWidget {
  final String hint;
  final TextEditingController? controller;
  final Widget? leading;
  final Widget? action;

  AppInputFieldWidget({
    Key? key,
    required this.hint,
    this.leading,
    this.action,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 48,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: AppColors.appGreen100),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          leading == null ? Container() : leading!,
          const SizedBox(width: 8),
          Expanded(
            child: TextField(
              controller: controller,
              cursorColor: AppColors.appGrey,
              style: myTheme().textTheme.bodyMedium,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hint,
                hintStyle: myTheme()
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Colors.grey),
              ),
            ),
          ),
          action == null ? Container() : action!,
        ],
      ),
    );
  }
}
