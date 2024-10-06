import 'package:flutter/material.dart';
import 'package:food_recipe_app/utils/constants/color_constant.dart';
import 'package:hugeicons/hugeicons.dart';

class customIngredientsTextField extends StatelessWidget {
  const customIngredientsTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 5,
          child: TextFormField(
            decoration: InputDecoration(
                hintText: "Item Name",
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorConstants.Greyshade2,
                    ),
                    borderRadius: BorderRadius.circular(10))),
          ),
        ),
        SizedBox(width: 12),
        Expanded(
          flex: 3,
          child: TextFormField(
            decoration: InputDecoration(
                hintText: "Quantity",
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorConstants.Greyshade2,
                    ),
                    borderRadius: BorderRadius.circular(10))),
          ),
        ),
        SizedBox(width: 12),
        HugeIcon(
          icon: HugeIcons.strokeRoundedRemoveSquare,
          color: Colors.black,
          size: 30.0,
        ),
      ],
    );
  }
}
