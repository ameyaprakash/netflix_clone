import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/constants/color_constants.dart';

class MoviesBuilderWidget extends StatelessWidget {
  const MoviesBuilderWidget({super.key, this.isCirle=false,
  
  this.customHeight=161,
  this.customWidth=103,
  required this.posterImage, required this.titleText, this.haveInfoCard=false,
  });
  final bool isCirle;  //
  final double customHeight;
  final double customWidth;
  final List<String> posterImage;
  final titleText;
  final haveInfoCard;

  @override
  Widget build(BuildContext context) {
    return  Column(
       mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 15),
          child: Text(titleText,
          style: TextStyle(
            color: ColorConstants.mainWhite,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),),
        ),
        
        SizedBox(height: 22,),
        SizedBox(
          height: customHeight,
          child: 
        ListView.separated(
         itemCount: posterImage.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Container(
            
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(posterImage[index])),
              shape: isCirle?BoxShape.circle:BoxShape.rectangle,
              color: Colors.orange,
            ),
            height: customHeight,
            width: customWidth, 
            child: Visibility(
              visible: haveInfoCard,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 3,
                    color: Colors.grey,
                  ),
                  Container(
                    color:ColorConstants.mainBlack,
                      padding:EdgeInsets.symmetric(vertical: 7),
              child: Row(
                        
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.info_outline,
                  color: ColorConstants.mainWhite,),
                  Icon(Icons.more_vert,
                  color: ColorConstants.mainWhite,)
                ],
              ),
                  )
                ],
              ),
            ),
          ),
          separatorBuilder: (context, index) => SizedBox(
            width: 7,    
          ),
        ),
        ),
        SizedBox(height: 22,),
      ],
    );
  }
}