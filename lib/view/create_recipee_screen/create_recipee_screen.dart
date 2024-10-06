import 'package:flutter/material.dart';
import 'package:food_recipe_app/utils/constants/color_constant.dart';
import 'package:food_recipe_app/view/create_recipee_screen/widgets/custom_ingrediants_textfield.dart';
import 'package:food_recipe_app/view/global_widgets/container_button.dart';
import 'package:food_recipe_app/view/global_widgets/custom_ingrediants_card.dart';
import 'package:hugeicons/hugeicons.dart';

class CreateRecipeeScreen extends StatelessWidget {
  const CreateRecipeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Icon(Icons.more_horiz),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // page title
              Text(
                "Create recipe",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: ColorConstants.mainBlack,
                    fontSize: 24),
              ),
              SizedBox(height: 24),
              // seciton 1 : upload video seciton
              _buildRecipeeVideoSection(),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Name",
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: ColorConstants.primaryColor,
                        ),
                        borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(height: 16),
              custom_ingrediants_card(
                imageurl:
                    "https://cdn-icons-png.flaticon.com/128/1040/1040005.png",
                name: "Serves",
                quantity: "01",
                havearrow: true,
              ),
              SizedBox(height: 16),
              custom_ingrediants_card(
                imageurl:
                    "https://cdn-icons-png.flaticon.com/128/3240/3240587.png",
                name: "Cook time",
                quantity: "45 mins",
                havearrow: true,
              ),
              SizedBox(height: 16),
              Text(
                "Ingredients",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: ColorConstants.mainBlack,
                    fontSize: 24),
              ),
              SizedBox(height: 16),
              customIngredientsTextField(),
              SizedBox(height: 16),
              customIngredientsTextField(),
              SizedBox(height: 16),
              customIngredientsTextField(), SizedBox(height: 20),
              Text(
                "+ Add new Ingredient",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: ColorConstants.mainBlack,
                    fontSize: 24),
              ),
              SizedBox(height: 20),
              CustomButton(
                buttonTextSize: 20,
                height: 50,
                onButtonPressed: () {},
                text: "Save my recipes",
              )
            ],
          ),
        ),
      ),
    );
  }

  Container _buildRecipeeVideoSection() {
    return Container(
      height: 200,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://images.pexels.com/photos/691114/pexels-photo-691114.jpeg?auto=compress&cs=tinysrgb&w=600"))),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CircleAvatar(
                  radius: 16,
                  backgroundColor: ColorConstants.mainWhite,
                  child: HugeIcon(
                    icon: HugeIcons.strokeRoundedEdit02,
                    color: ColorConstants.primaryColor,
                    size: 20,
                  ),
                ),
              ],
            ),
            CircleAvatar(
                radius: 24,
                backgroundColor: ColorConstants.lightBlack.withOpacity(.3),
                child: Icon(
                  Icons.play_arrow,
                  color: ColorConstants.mainWhite,
                  size: 20,
                )),
            CircleAvatar(
              backgroundColor: Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}
