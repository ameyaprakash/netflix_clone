import 'package:flutter/material.dart';
import 'package:netflix_clone/dummy_db.dart';
import 'package:netflix_clone/utils/constants/color_constants.dart';

class SearchScreen extends StatelessWidget {
  final List<String> titleImage;
  const SearchScreen({super.key, required this.titleImage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: Column(
        children: [
          TextField(
            textAlign: TextAlign.left,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(20),
            prefixIcon: Icon(Icons.search,
            color: Colors.grey,
            ),
            suffixIcon: Icon(Icons.mic,
            color: Colors.grey,),
            hintText: "Search for a Movie, Shows, e.t.c..",
            hintStyle: TextStyle(
              color: Colors.grey,
            ),
            filled: true,
            fillColor: Colors.grey.shade800,
            ),
          ),
          Text(
            "Top Searched",
            style: TextStyle(
              color: ColorConstants.mainWhite,
            ),
          ),
          Expanded(child: 
          ListView.separated(
            itemCount:DummyDb.titleImage.length,
            itemBuilder: (context, index) => ListTile(
            dense: true,
            leading: Container(
              decoration: 
              BoxDecoration(
                color: Colors.red,
                image: DecorationImage(image: NetworkImage(DummyDb.titleImage[index]),
                fit: BoxFit.fill)
                
              ),
              width: 146,
              
            ),
            title: Text("Title",
            style: TextStyle(
              color: ColorConstants.mainWhite,
            ),
            ),
            trailing: Icon(Icons.play_circle_outline_rounded),
          ),
            separatorBuilder: (context, index) => SizedBox(
              height: 10,
            ),
           ),
           ),
        ],
      ),
    );
  }
}