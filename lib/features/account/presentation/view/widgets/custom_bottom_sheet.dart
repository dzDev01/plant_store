import 'package:flutter/material.dart';
import 'package:plant_store/core/utils/constants/app_colors.dart';
import 'package:plant_store/core/utils/constants/responsive.dart';
import 'package:plant_store/features/account/presentation/view/widgets/custom_button_w.dart';

class CustomAccountBottomSheet extends StatelessWidget {
  const CustomAccountBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: ScreenSize.deviceHeight * 0.45,
      width: double.infinity,
      decoration: const BoxDecoration(
          color: AppColors.appWhite,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          CustomAccountButton(
            text: "My Orders",
            onTap: () {},
          ),
          CustomAccountButton(
            text: "Settings",
            onTap: () {},
          ),
          CustomAccountButton(
            text: "Sign Out",
            onTap: () {},
          ),
          CustomAccountButton(
            text: "About Us",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
