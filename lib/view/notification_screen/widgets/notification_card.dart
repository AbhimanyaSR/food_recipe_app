import 'package:flutter/material.dart';
import 'package:food_recipe_app/utils/constants/color_constant.dart';

class Notificationcard extends StatelessWidget {
  final String title;
  final String notification;
  const Notificationcard({
    required this.notification,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 82,
      width: 335,
      decoration: BoxDecoration(
          color: ColorConstants.Greyshade3,
          borderRadius: BorderRadius.circular(12)),
      child: Stack(
        children: [
          Positioned(
            top: 12,
            left: 16,
            child: Row(
              children: [
                Container(
                  height: 28,
                  width: 28,
                  decoration: BoxDecoration(
                      color: ColorConstants.Greyshade2,
                      borderRadius: BorderRadius.circular(6)),
                  child: Icon(
                    Icons.description,
                    size: 16,
                    color: ColorConstants.primaryColor,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 56,
            top: 12,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                ),
                Text(
                  notification,
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: ColorConstants.Greyshade2),
                )
              ],
            ),
          ),
          Positioned(
              right: 20,
              bottom: 60,
              child: Icon(
                Icons.circle_sharp,
                color: ColorConstants.primaryColor,
                size: 10,
              ))
        ],
      ),
    );
  }
}
