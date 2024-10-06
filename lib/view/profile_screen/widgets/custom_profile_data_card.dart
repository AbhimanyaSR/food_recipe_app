import 'package:flutter/material.dart';
import 'package:food_recipe_app/utils/constants/color_constant.dart';

class custom_profile_data_card extends StatelessWidget {
  const custom_profile_data_card({
    super.key,
    required this.title,
    required this.count,
  });
  final String title;
  final String count;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 12,
              color: ColorConstants.Greyshade2,
              fontWeight: FontWeight.normal),
        ),
        SizedBox(
          height: 2,
        ),
        Text(
          count,
          style: TextStyle(
              fontSize: 20,
              color: ColorConstants.mainBlack,
              fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
