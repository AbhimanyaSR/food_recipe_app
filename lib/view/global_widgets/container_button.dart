import 'package:flutter/material.dart';
import 'package:food_recipe_app/utils/constants/color_constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.text,
    this.onButtonPressed,
    super.key,
    this.height,
    this.width,
    this.buttonTextSize,
  });
  final String text;
  final double? buttonTextSize;
  final double? height;
  final double? width;
  final void Function()? onButtonPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onButtonPressed,
      child: Container(
        height: height,
        width: width,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: ColorConstants.primaryColor,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: ColorConstants.mainWhite,
                fontWeight: FontWeight.w600,
                fontSize: buttonTextSize ?? 14),
          ),
        ),
      ),
    );
  }
}
