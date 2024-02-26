import 'package:flutter/material.dart';
import 'package:plant_store/constants/app_colors.dart';
import 'package:plant_store/constants/responsive.dart';
import 'package:plant_store/constants/strings.dart';

import '../widgets/widgets.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: ScreenSize.deviceWidth * 0.1),
        height: double.infinity,
        width: ScreenSize.deviceWidth,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.fill),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "Welcome to",
                style: TextStyle(fontSize: 24, fontFamily: "Merriweather"),
              ),
              const Text(
                "Flowerfly!",
                style: TextStyle(
                    fontFamily: "Pacifico",
                    fontSize: 40,
                    color: AppColors.appGreen700),
              ),
              SizedBox(height: ScreenSize.deviceHeight * 0.1),
              const Text(
                "Join Us",
                style: TextStyle(
                    fontFamily: "Merriweather",
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: ScreenSize.deviceHeight * 0.03),
              AppButtonWidget(
                  buttonColor: AppColors.appGreen500,
                  title: "Continue",
                  titleColor: AppColors.appWhite,
                  onTap: () {
                    Navigator.pushNamed(context, loginScreenString);
                  },
                  useBorder: false)
            ],
          ),
        ),
      ),
    );
  }
}
