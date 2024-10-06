import 'package:flutter/material.dart';
import 'package:food_recipe_app/utils/constants/color_constant.dart';
import 'package:food_recipe_app/utils/constants/image_constant.dart';
import 'package:food_recipe_app/view/onboarding_screen/onboarding_screen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then(
      (value) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => OnboardingScreen(),
            ));
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.primaryColor,
      body: Center(
        child: Image.asset(height: 200, ImageConstants.logo),
      ),
    );
  }
}
