import 'package:flutter/material.dart';
import 'package:food_recipe_app/utils/constants/color_constant.dart';
import 'package:food_recipe_app/view/dummy_db.dart';
import 'package:food_recipe_app/view/global_widgets/custom_video_card.dart';
import 'package:food_recipe_app/view/home_screen/widgets/popular_creator_card.dart';
import 'package:food_recipe_app/view/home_screen/widgets/recent_recipee_card.dart';
import 'package:food_recipe_app/view/home_screen/widgets/stack_card.dart';
import 'package:food_recipe_app/view/recipee_details_screen/recipee_details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainWhite,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // # seciton 1- title section
              _titleSection(),
              //# seciton 2 - trending now seciton
              _trendingNowSection(),

              _Popular_Catagory_Section(),

              _Recent_Recipe_Section(),
              SizedBox(
                height: 12,
              ),
              _Popular_creator_section(),
              SizedBox(
                height: 40,
              )
            ],
          ),
        ),
      ),
    );
  }

  Column _Popular_creator_section() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Popular creators",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: ColorConstants.lightBlack),
              ),
              Spacer(),
              Row(
                children: [
                  Text(
                    "See all",
                    style: TextStyle(
                      color: ColorConstants.primaryColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(width: 8),
                  Icon(
                    Icons.arrow_forward_outlined,
                    color: ColorConstants.primaryColor,
                  )
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 16,
        ),
        SizedBox(
          height: 119,
          child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => popular_creator_card(
                    name: DummyDb.popularcreatorlist[index]["name"],
                    imageurl: DummyDb.popularcreatorlist[index]["profileurl"],
                  ),
              separatorBuilder: (context, index) => SizedBox(
                    width: 12,
                  ),
              itemCount: 10),
        )
      ],
    );
  }

  Column _Recent_Recipe_Section() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recent recipe",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: ColorConstants.lightBlack),
              ),
              Spacer(),
              Row(
                children: [
                  Text(
                    "See all",
                    style: TextStyle(
                      color: ColorConstants.primaryColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(width: 8),
                  Icon(
                    Icons.arrow_forward_outlined,
                    color: ColorConstants.primaryColor,
                  )
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 16,
        ),
        SizedBox(
          height: 191,
          child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => recent_recipee_card(
                    name: DummyDb.recentrecipeelist[index]["name"],
                    productname: DummyDb.recentrecipeelist[index]
                        ["productname"],
                    imageurl: DummyDb.recentrecipeelist[index]["imageurl"],
                  ),
              separatorBuilder: (context, index) => SizedBox(
                    width: 16,
                  ),
              itemCount: 10),
        )
      ],
    );
  }

  Widget _Popular_Catagory_Section() {
    return DefaultTabController(
        length: 5,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Popular category",
                  style: TextStyle(
                      color: ColorConstants.mainBlack,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              TabBar(
                padding: EdgeInsets.symmetric(horizontal: 20),
                indicatorSize: TabBarIndicatorSize.tab,
                dividerHeight: 0,
                isScrollable: true,
                tabAlignment: TabAlignment.start,
                indicator: BoxDecoration(
                    color: ColorConstants.primaryColor,
                    borderRadius: BorderRadius.circular(10)),
                labelColor: ColorConstants.mainWhite,
                unselectedLabelColor: ColorConstants.primaryColor,
                tabs: [
                  Tab(
                      child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text("Salad"),
                  )),
                  Tab(
                      child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text("Breakfast"),
                  )),
                  Tab(
                      child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text("Appetizer"),
                  )),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Tab(child: Text("Noodle")),
                  ),
                  Tab(
                      child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text("Lunch"),
                  )),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 231,
                child: ListView.separated(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Stack_Card(
                          imageurl: DummyDb.popularcategorylist[index]
                              ["imageurl"],
                          time: DummyDb.popularcategorylist[index]["time"],
                          productname: DummyDb.popularcategorylist[index]
                              ["productname"],
                        ),
                    separatorBuilder: (context, index) => SizedBox(
                          width: 16,
                        ),
                    itemCount: 10),
              )
            ],
          ),
        ));
  }

  Column _trendingNowSection() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 12),
          //title seciton
          child: Row(
            children: [
              Text(
                "Trending Now 🔥",
                style: TextStyle(
                  color: ColorConstants.mainBlack,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
              Spacer(),
              Text(
                "See all",
                style: TextStyle(
                  color: ColorConstants.primaryColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
              SizedBox(width: 8),
              Icon(
                Icons.arrow_forward_outlined,
                color: ColorConstants.primaryColor,
              )
            ],
          ),
        ),
        SizedBox(height: 16),

        // video player seciton
        SizedBox(
          height: 256,
          child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => CustomVideoCard(
                    oncardTapped: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RecipeeDetailsScreen(
                              rating: DummyDb.trendingnowlist[index]["rating"],
                              recipeeTitle: DummyDb.trendingnowlist[index]
                                  ["title"],
                              image: DummyDb.trendingnowlist[index]["imageurl"],
                              profileImage: DummyDb.trendingnowlist[index]
                                  ["profileimageurl"],
                              userName: DummyDb.trendingnowlist[index]
                                  ["username"],
                            ),
                          ));
                    },
                    duration: DummyDb.trendingnowlist[index]["duration"],
                    imageurl: DummyDb.trendingnowlist[index]["imageurl"],
                    profile: DummyDb.trendingnowlist[index]["profileimageurl"],
                    rating: DummyDb.trendingnowlist[index]["rating"],
                    title: DummyDb.trendingnowlist[index]["title"],
                    username: DummyDb.trendingnowlist[index]["username"],
                  ),
              separatorBuilder: (context, index) => SizedBox(
                    width: 16,
                  ),
              itemCount: DummyDb.trendingnowlist.length),
        ),
      ],
    );
  }

  Column _titleSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
          child: Text(
            "Find best recipes\nfor cooking",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: ColorConstants.mainBlack,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: TextField(
            decoration: InputDecoration(
                hintText: "Search recipes",
                hintStyle: TextStyle(
                    color: ColorConstants.Greyshade1,
                    fontSize: 14,
                    fontWeight: FontWeight.normal),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: ColorConstants.Greyshade1),
                    borderRadius: BorderRadius.circular(10)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: ColorConstants.Greyshade1),
                    borderRadius: BorderRadius.circular(10)),
                prefixIcon: Icon(
                  Icons.search,
                  color: ColorConstants.Greyshade1,
                )),
          ),
        )
      ],
    );
  }
}
