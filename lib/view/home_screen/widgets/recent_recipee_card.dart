import 'package:flutter/material.dart';
import 'package:food_recipe_app/utils/constants/color_constant.dart';

class recent_recipee_card extends StatelessWidget {
  final String imageurl;
  final String productname;
  final String name;

  recent_recipee_card(
      {super.key,
      required this.imageurl,
      required this.productname,
      required this.name});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 191,
      width: 124,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(imageurl))),
            height: 124,
            width: 124,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            productname,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: ColorConstants.lightBlack),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            name,
            // textAlign: TextAlign.start,

            style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 10,
                color: ColorConstants.Greyshade2),
          )
        ],
      ),
    );
  }
}
