import 'package:flutter/material.dart';
import 'package:netflix_clone/dummy_db.dart';
import 'package:netflix_clone/utils/constants/color_constants.dart';
import 'package:netflix_clone/utils/constants/image_constants.dart';
import 'package:netflix_clone/view/home_screen/widget/movies_builder_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: ColorConstants.mainBlack,
      body: 
      SingleChildScrollView(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildmoviepostersection(),
            SizedBox(height: 11,),
            _buildPlaySection(),
            SizedBox(height: 40,),

            MoviesBuilderWidget(
              titleText: "Popular on Netflix",
              posterImage: DummyDb.imageList1,
              customWidth: 102,
              isCirle: true,
            ),
            MoviesBuilderWidget(
              titleText: "Trending Now",
              posterImage: DummyDb.imageList2,
            ),
            MoviesBuilderWidget(
              titleText: "Us TV Shows",
              posterImage: DummyDb.imageList1,
            ),
            MoviesBuilderWidget(
              haveInfoCard: true,
              titleText: "Watch it again",
              posterImage: DummyDb.imageList2,
              customHeight: 251,
              customWidth: 154,
            ),
          ],
        ),
      ),
      
      
    );
  }

  Widget _buildPlaySection() { 
   return Row(
    mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Icon(Icons.add,
            color: ColorConstants.mainWhite,),
            Text("My List",
            style: TextStyle(
              color: ColorConstants.mainWhite,
              fontSize: 14,
            ),)
          ],
        ),
        SizedBox(width: 42,),
        Container(
          padding: EdgeInsets.symmetric(vertical: 7,horizontal: 15,),
          decoration: BoxDecoration(
            color: Color(0xFFC4C4C4),
            borderRadius: BorderRadius.circular(6)),
          child: Row(
            children: [
              Icon(Icons.play_arrow,
              size: 40,
              color: ColorConstants.mainWhite,),
              SizedBox(width: 5,),

              Text("Play",
            style: TextStyle(
              color: ColorConstants.mainBlack,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),)
            ],
          ),
        ),
        SizedBox(width: 42,),
        Column(
          children: [
            Icon(Icons.info_outline,
            color: ColorConstants.mainWhite,),
            Text("Info",
            style: TextStyle(
              color: ColorConstants.mainWhite,
              fontSize: 14,
            ),)
          ],
        ),
        
      ],
   );
   }

  Widget _buildmoviepostersection() {
    return Stack(
          children: [
            Container(
            
            decoration: BoxDecoration(
              image:    
              DecorationImage(
                
                fit: BoxFit.cover,
                image: AssetImage(ImageConstants.Nlogo)
                )),
                height: 415,
                
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 24),
            height: 415,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                
                end: Alignment.center,
                begin:Alignment.bottomCenter,
                colors: [
                ColorConstants.mainBlack,
                Colors.transparent,
              ]),
            ),
              child: 
              Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(ImageConstants.POSTER_BG),
                        Text("Tv Shows",
                        style: TextStyle(fontSize: 18,
                          color: ColorConstants.mainWhite),),
                          Text("Movies",
                        style: TextStyle(fontSize: 18,
                          color: ColorConstants.mainWhite),),
                          Text("My List",
                        style: TextStyle(fontSize: 18,
                          color: ColorConstants.mainWhite),),
                      ],
                                          ),
                    ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Image.asset(ImageConstants.Iconl,
                  ),
                  SizedBox(width: 5,),
                    Text("#2 in Nigeria Today",
                    style: TextStyle(
                      fontSize: 14,
                      color: ColorConstants.mainWhite,
                      fontWeight: FontWeight.bold,
                    ),)
                  ],)
                  ],
                ),

          )
         
          ],
        );
  }
}