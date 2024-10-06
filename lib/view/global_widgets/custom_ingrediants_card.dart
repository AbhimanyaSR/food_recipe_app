import 'package:flutter/material.dart';
import 'package:food_recipe_app/utils/constants/color_constant.dart';

class custom_ingrediants_card extends StatelessWidget {
  const custom_ingrediants_card({
    super.key,
    this.havearrow = false,
    required this.imageurl,
    required this.name,
    required this.quantity,
  });
  final bool havearrow;
  final String name;
  final String quantity;
  final String imageurl;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: ColorConstants.Greyshade3),
      child: Row(
        children: [
          Container(
            height: 52,
            width: 52,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ColorConstants.mainWhite),
            child: Image(image: NetworkImage(imageurl)),
          ),
          SizedBox(
            width: 30,
          ),
          Text(
            name,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: ColorConstants.mainBlack),
          ),
          Spacer(),
          Text(
            quantity,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: ColorConstants.Greyshade2),
          ),
          havearrow
              ? Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Icon(Icons.arrow_forward),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
