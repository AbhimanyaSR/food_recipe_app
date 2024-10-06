import 'package:flutter/material.dart';
import 'package:food_recipe_app/utils/constants/color_constant.dart';

class Stack_Card extends StatelessWidget {
  final String imageurl;
  final String productname;
  final String time;

  Stack_Card(
      {super.key,
      required this.imageurl,
      required this.productname,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(height: 231, width: 150),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            padding: EdgeInsets.all(12),
            height: 176,
            decoration: BoxDecoration(
                color: ColorConstants.Greyshade3,
                borderRadius: BorderRadius.circular(12)),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  textAlign: TextAlign.center,
                  productname,
                  style: TextStyle(
                      color: ColorConstants.mainBlack,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("time",
                            style: TextStyle(
                                color: ColorConstants.Greyshade2,
                                fontSize: 12,
                                fontWeight: FontWeight.normal)),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          time,
                          style: TextStyle(
                              color: ColorConstants.mainBlack,
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      radius: 12,
                      backgroundColor: ColorConstants.mainWhite,
                      child: Icon(
                        Icons.bookmark_border,
                        size: 16,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          child: CircleAvatar(
            backgroundImage: NetworkImage(imageurl),
            backgroundColor: ColorConstants.primaryColor,
            radius: 55,
          ),
        ),
      ],
    );
  }
}
