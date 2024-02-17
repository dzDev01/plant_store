import 'package:flutter/material.dart';
import 'package:plant_store/constants/app_colors.dart';
import 'package:plant_store/constants/strings.dart';

import '../widgets/widgets.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() {
    return _LoginScreenState();
  }
}

class _LoginScreenState extends State<LoginScreen> {
  late double deviceWidth, deviceHeight;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

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
                _buildAppName(),
                _buildLoginBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAppName() {
    return Container(
      padding: EdgeInsets.all(deviceWidth * 0.05),
      height: deviceHeight * 0.17,
      child: const Center(
        child: Text(
          "Flowerfly!",
          style: TextStyle(
              fontFamily: "Pacifico",
              fontSize: 40,
              color: AppColors.appGreen700),
        ),
      ),
    );
  }

  Form _buildLoginForm() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          AppInputFieldWidget(hint: "Email"),
          SizedBox(height: deviceHeight * 0.02),
          AppInputFieldWidget(hint: "Password"),
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
                  "Log in",
                  style: TextStyle(
                      color: AppColors.appGreen700,
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      fontFamily: "Merriweather"),
                ),
              ),
              SizedBox(height: deviceHeight * 0.04),
              _buildLoginForm(),
              SizedBox(height: deviceHeight * 0.02),
              ComplexText(
                title: "Forgot your password? ",
                clickedText: "Click Here",
                onTap: () {},
              ),
              SizedBox(height: deviceHeight * 0.03),
              AppButtonWidget(
                  buttonColor: AppColors.appGreen500,
                  title: "Log in",
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
                title: "Don't have an account? ",
                clickedText: "Sign up",
                onTap: () {
                  Navigator.pushNamed(context, signUpScreenString);
                },
              ),
            ],
          ),
        )
      ],
    );
  }
}
