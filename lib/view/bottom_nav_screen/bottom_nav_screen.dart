import 'package:flutter/material.dart';
import 'package:netflix_clone/dummy_db.dart';
import 'package:netflix_clone/utils/constants/color_constants.dart';
import 'package:netflix_clone/view/coming_soon_screen/coming_soon_screen.dart';
import 'package:netflix_clone/view/downloads/download_screen.dart';
import 'package:netflix_clone/view/home_screen/home_screen.dart';
import 'package:netflix_clone/view/more_screen/more_screen.dart';
import 'package:netflix_clone/view/search_screen/search_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});
  

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int seletedIndex=0;
  List <Widget> myScreen=[
    HomeScreen(),
    SearchScreen(titleImage: DummyDb.titleImage),
    ComingSoonScreen(),
    DownloadScreen(),
    MoreScreen(),
    
     
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: myScreen[seletedIndex],
      backgroundColor: ColorConstants.mainBlack,
      bottomNavigationBar:
       BottomNavigationBar(
        
        backgroundColor: ColorConstants.mainBlack,
        selectedItemColor: ColorConstants.mainWhite,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        unselectedFontSize: 10,
        selectedFontSize: 10,
        currentIndex: seletedIndex,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
        BottomNavigationBarItem(icon: Icon(Icons.video_collection_outlined),label: "Coming Soon"),
        BottomNavigationBarItem(icon: Icon(Icons.file_download_sharp),label: "Downloads"),
        BottomNavigationBarItem(icon: Icon(Icons.menu),label: "More"),
       ],
       onTap: (value) {
         seletedIndex=value;
         setState(() {
           
         });
       },
       ),
    );
  }
}