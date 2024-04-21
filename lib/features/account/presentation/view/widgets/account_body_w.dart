import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:plant_store/core/utils/config/assets_path.dart';
import 'package:plant_store/core/utils/constants/responsive.dart';
import 'package:plant_store/features/account/presentation/view/widgets/custom_app_bar_w.dart';
import 'package:plant_store/features/account/presentation/view/widgets/image_pick_w.dart';
import 'package:plant_store/features/account/presentation/view/widgets/welcome_text_w.dart';

class AccountViewBody extends StatelessWidget {
  const AccountViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: ScreenSize.deviceWidth,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(AssetsPath.backgroundImage), fit: BoxFit.fill),
      ),
      child: const Center(
        child: Column(
          children: [
            CustomAppBarAccountW(),
            CustomImagePickW(),
            WelcomeTextW(),
          ],
        ),
      ),
    );
  }
}
