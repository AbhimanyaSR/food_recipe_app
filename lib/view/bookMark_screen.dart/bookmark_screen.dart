import 'package:flutter/material.dart';
import 'package:food_recipe_app/utils/constants/color_constant.dart';
import 'package:food_recipe_app/view/dummy_db.dart';
import 'package:food_recipe_app/view/global_widgets/custom_recipee_card.dart';
import 'package:food_recipe_app/view/global_widgets/custom_video_card.dart';
import 'package:food_recipe_app/view/recipee_details_screen/recipee_details_screen.dart';

class Bookmarkscreen extends StatelessWidget {
  const Bookmarkscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: appbar_section(),
          body: TabBarView(
              children: [_build_vedios_tab(), _build_recipees_tab()])),
    );
  }

  ListView _build_recipees_tab() {
    return ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        itemBuilder: (context, index) => CustomRecipeeCard(
              rating: DummyDb.trendingnowlist[index]["rating"],
              imageUrl: DummyDb.trendingnowlist[index]["imageurl"],
              title: DummyDb.trendingnowlist[index]["title"],
            ),
        separatorBuilder: (context, index) => SizedBox(height: 16),
        itemCount: 10);
  }

  ListView _build_vedios_tab() {
    return ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        itemBuilder: (context, index) => CustomVideoCard(
              oncardTapped: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RecipeeDetailsScreen(
                        rating: DummyDb.trendingnowlist[index]["rating"],
                        profileImage: DummyDb.trendingnowlist[index]
                            ["profileimageurl"],
                        userName: DummyDb.trendingnowlist[index]["username"],
                        image: DummyDb.trendingnowlist[index]["imageurl"],
                        recipeeTitle: DummyDb.trendingnowlist[index]["title"],
                      ),
                    ));
              },
              width: double.infinity,
              duration: DummyDb.trendingnowlist[index]["duration"],
              imageurl: DummyDb.trendingnowlist[index]["imageurl"],
              profile: DummyDb.trendingnowlist[index]["profileimageurl"],
              rating: DummyDb.trendingnowlist[index]["rating"],
              title: DummyDb.trendingnowlist[index]["title"],
              username: DummyDb.trendingnowlist[index]["username"],
            ),
        separatorBuilder: (context, index) => SizedBox(
              height: 16,
            ),
        itemCount: DummyDb.trendingnowlist.length);
  }

  AppBar appbar_section() {
    return AppBar(
      title: Text(
        "Saved recipes",
        style: TextStyle(
            color: ColorConstants.mainBlack, fontWeight: FontWeight.w600),
      ),
      bottom: TabBar(
        padding: EdgeInsets.symmetric(horizontal: 20),
        indicatorSize: TabBarIndicatorSize.tab,
        dividerHeight: 0,
        // isScrollable: true,
        // tabAlignment: TabAlignment.start,
        indicator: BoxDecoration(
            color: ColorConstants.primaryColor,
            borderRadius: BorderRadius.circular(10)),
        labelColor: ColorConstants.mainWhite,
        unselectedLabelColor: ColorConstants.primaryColor,
        tabs: [
          Tab(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Text("Vedio"),
          )),
          Tab(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Text("Recipe"),
          )),
        ],
      ),
    );
  }
}
