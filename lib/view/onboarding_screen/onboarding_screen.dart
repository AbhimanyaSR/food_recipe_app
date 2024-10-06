import 'package:flutter/material.dart';
import 'package:food_recipe_app/utils/constants/color_constant.dart';
import 'package:food_recipe_app/utils/constants/image_constant.dart';
import 'package:food_recipe_app/view/bottom_navbar_screen/bottom_navbar_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            // first section : build header section
            _buildHeaderSection(),
            // second section - for building the background image
            _buildBackgroundImage(),
            // third section -  gradient with start cooking button
            _buildGradientSection(context),
          ],
        ),
      ),
    );
  }

  Positioned _buildHeaderSection() {
    return Positioned(
      right: 0,
      left: 0,
      top: 13,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.star,
            color: Colors.white,
            size: 16,
          ),
          SizedBox(width: 10),
          RichText(
            text: TextSpan(
                text: "60k+",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
                children: [
                  TextSpan(
                      text: " Premium recipes",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 16)),
                  TextSpan(text: " Premium recipes", style: TextStyle())
                ]),
          )
        ],
      ),
    );
  }

  Widget _buildGradientSection(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 64, vertical: 60),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.transparent,
            ColorConstants.mainBlack,
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Let's Cooking",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: ColorConstants.mainWhite,
                fontSize: 56,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Find best recipes for cooking",
              style: TextStyle(
                  color: ColorConstants.mainWhite,
                  fontSize: 16,
                  fontWeight: FontWeight.normal),
            ),
            SizedBox(height: 40),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BottomNavbarScreen(),
                    ));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: ColorConstants.primaryColor,
                ),
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Start Cooking",
                      style: TextStyle(
                          color: ColorConstants.mainWhite,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.arrow_forward,
                      size: 20,
                      color: ColorConstants.mainWhite,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildBackgroundImage() {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(ImageConstants.ONBOARDING_SCREEN_BG))),
    );
  }
}
