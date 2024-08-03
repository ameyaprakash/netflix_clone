import 'package:flutter/material.dart';
import 'package:netflix_clone/dummy_db.dart';
import 'package:netflix_clone/utils/constants/color_constants.dart';

class UserNameCard extends StatelessWidget {
  const UserNameCard({super.key, required this.imagePath, required this.userName, this.onCardPressed,  this.height = 60, this.width = 65});
  final String imagePath;
  final String userName;
  final void Function()? onCardPressed;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCardPressed,
      child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                        Image.asset(
                          height: height,
                          width: width,
                          imagePath),
                  SizedBox(height: 4,),
                  Text(userName,
                  style: TextStyle(color: Colors.white,fontSize: 13.25),),
                ],
              ),
    );
  }
}