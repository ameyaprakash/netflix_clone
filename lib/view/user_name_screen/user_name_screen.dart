import 'package:flutter/material.dart';
import 'package:netflix_clone/dummy_db.dart';
import 'package:netflix_clone/utils/constants/color_constants.dart';
import 'package:netflix_clone/utils/constants/image_constants.dart';
import 'package:netflix_clone/view/bottom_nav_screen/bottom_nav_screen.dart';
import 'package:netflix_clone/view/global_widget/user_name_card.dart';
// import 'package:netflix_clone/view/home_screen/home_screen.dart';

class UserNameScreen extends StatefulWidget {
  const UserNameScreen({super.key});

  @override
  State<UserNameScreen> createState() => _UserNameScreenState();
}

class _UserNameScreenState extends State<UserNameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: ColorConstants.mainBlack,
      appBar: AppBar(
        backgroundColor: ColorConstants.mainBlack,
        centerTitle: true,
        title: Image.asset(height: 37.2,
          ImageConstants.LOGO_PNG),
        actions: [Icon(Icons.edit,
        color: ColorConstants.mainWhite,),
        SizedBox(width: 20,),
        ],
      ),
      body: Center(
        child: GridView.builder(
          padding: EdgeInsets.symmetric(horizontal: 75),
          shrinkWrap: true,
          itemCount: DummyDb.userList.length + 1,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 130,
            crossAxisSpacing: 10), 
          itemBuilder: (context, index) {
          if(index<DummyDb.userList.length){
          return UserNameCard(imagePath: DummyDb.userList[index]["imagePath"].toString(),
           userName: DummyDb.userList[index]["name"].toString(),
           onCardPressed: () {
             Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavScreen(),));
           },);
          }else{
          return  InkWell(
              onTap: () {
                DummyDb.userList.add({
               "imagePath": ImageConstants.RECTANGLE5_PNG, "name":"Kids"
                });
              
                setState(() {
                });
                
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(backgroundColor: Colors.green,
                  content: Text("Profile added")));
              },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        Image.asset(ImageConstants.Group1_PNG),
                                      SizedBox(height: 20,),
                                      Text("Add Profile",
                                      style: TextStyle(color: ColorConstants.mainWhite,
                                      fontSize: 13.25,
                                      ),
                                      ),
                      ],
                    )
                  ],
                
              ),
              
            );
          }
          
        },
        ),
      ),
    );
  }
}