import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:plant_store/constants/app_colors.dart';

class AppInputFieldWidget extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  final Widget? leading;
  final Widget? action;

  AppInputFieldWidget({
    Key? key,
    required this.hint,
    this.leading,
    this.action,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 48,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
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
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hint,
                hintStyle: TextStyle(
                  fontSize: 16,
                  color: Colors.grey.shade500,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          action == null ? Container() : action!,
        ],
      ),
    );
  }
}
