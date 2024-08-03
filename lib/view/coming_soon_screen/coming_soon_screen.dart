import 'package:flutter/material.dart';
import 'package:netflix_clone/dummy_db.dart';
import 'package:netflix_clone/utils/constants/color_constants.dart';
import 'package:netflix_clone/view/coming_soon_screen/widgets/custom_video_card.dart';
import 'package:netflix_clone/view/coming_soon_screen/widgets/new_arrival_card.dart';


class ComingSoonScreen extends StatelessWidget {
  const ComingSoonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      appBar: AppBar(
        titleSpacing: 0,
        backgroundColor: Colors.transparent,
        leading: Center(
          child: CircleAvatar(
            backgroundColor: ColorConstants.primaryred,
            radius: 20,
            child: Icon(
              Icons.notifications_sharp,
              size: 20,
               color: ColorConstants.mainWhite,
            ),
          ),
        ),
        title: Text("Notification",
        style: TextStyle(
          color: ColorConstants.mainWhite,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),),

      ),
    
    body: SingleChildScrollView(
      child: Column(
        children: [
          Column(
            children: List.generate(
              2,
              // DummyDb.imageList2.length, 
              (index) => NewArrivalCard(imageUrl: DummyDb.imageList2[index],),)
          ),
          SizedBox(height: 25,),
          Column(
            children: 
              List.generate(DummyDb.imageList1.length, (index) => CustomVideoCard(
                imageUrl: DummyDb.imageList1[index],
              ),),
              
          ),
        ],
      ),
    ),
    );
  }
}

