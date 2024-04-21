import 'package:flutter/material.dart';
import 'package:plant_store/core/utils/constants/strings.dart';

import '../../core/utils/constants/app_colors.dart';
import '../widgets/widgets.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late double deviceWidth, deviceHeight;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    deviceWidth = MediaQuery.of(context).size.width;
    deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: deviceWidth,
          height: deviceHeight,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.fill),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: deviceHeight * 0.1),
                _buildLoginBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Form _buildSignUpForm() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          AppInputFieldWidget(hint: "First name"),
          SizedBox(height: deviceHeight * 0.02),
          AppInputFieldWidget(hint: "Last Name"),
          SizedBox(height: deviceHeight * 0.02),
          AppInputFieldWidget(hint: "Email"),
          SizedBox(height: deviceHeight * 0.02),
          AppInputFieldWidget(hint: "Password"),
          SizedBox(height: deviceHeight * 0.02),
          AppInputFieldWidget(hint: "Confirm password"),
        ],
      ),
    );
  }

  Widget _buildLoginBox() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: deviceWidth,
          padding: EdgeInsets.symmetric(
              horizontal: deviceWidth * 0.05, vertical: deviceHeight * 0.05),
          decoration: const BoxDecoration(
            color: AppColors.appWhite,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                      color: AppColors.appGreen700,
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      fontFamily: "Merriweather"),
                ),
              ),
              SizedBox(height: deviceHeight * 0.04),
              _buildSignUpForm(),
              SizedBox(height: deviceHeight * 0.02),
              AppButtonWidget(
                  buttonColor: AppColors.appGreen500,
                  title: "Sign Up",
                  titleColor: Colors.white,
                  onTap: () {},
                  useBorder: false),
              SizedBox(height: deviceHeight * 0.03),
              const SeparatorWithLine(
                title: "Continue with",
                titleColor: AppColors.appGreen700,
                linesColor: AppColors.appGreen700,
              ),
              SizedBox(height: deviceHeight * 0.03),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SocialIconButton(iconPath: "assets/icons/google.png"),
                  SocialIconButton(iconPath: "assets/icons/apple.png"),
                  SocialIconButton(iconPath: "assets/icons/facebook.png"),
                ],
              ),
              SizedBox(height: deviceHeight * 0.03),
              const SeparatorWithLine(
                title: "OR",
                titleColor: AppColors.appGreen700,
                linesColor: AppColors.appGreen700,
              ),
              SizedBox(height: deviceHeight * 0.03),
              AppButtonWidget(
                buttonColor: AppColors.appGrey,
                title: "Continue as a guest",
                titleColor: AppColors.appGreen500,
                onTap: () {},
                useBorder: true,
              ),
              SizedBox(height: deviceHeight * 0.03),
              ComplexText(
                title: "Already have an account? ",
                clickedText: "Log in",
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        )
      ],
    );
  }
}
