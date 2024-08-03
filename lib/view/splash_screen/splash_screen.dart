import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/constants/image_constants.dart';
// import 'package:netflix_clone/view/home_screen/home_screen.dart';
import 'package:netflix_clone/view/user_name_screen/user_name_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  
   void initState(){
    print("hai");
    Future.delayed(Duration(seconds: 3)).then((value) {

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => UserNameScreen(),),);
    },);
    super.initState();
   }

  @override
 
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        
        child: Image.asset(ImageConstants.LOGO_PNG),
      ),
    );
  }
}