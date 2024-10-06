import 'package:flutter/material.dart';

class popular_creator_card extends StatelessWidget {
  final String imageurl;
  final String name;
  const popular_creator_card(
      {super.key, required this.imageurl, required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 119,
          width: 75,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 38,
                backgroundImage: NetworkImage(imageurl),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                name,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
              )
            ],
          ),
        )
      ],
    );
  }
}
