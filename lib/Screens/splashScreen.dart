import 'dart:ui';


import 'package:finalprojectflutter/Screens/Onboarding1.dart';
import 'package:finalprojectflutter/Screens/SignupScreen.dart';
import 'package:flutter/material.dart';

class Splash_Screen extends StatelessWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     Future.delayed(Duration(seconds: 3), () {
       Navigator.push(
         context,
         MaterialPageRoute(builder: (context) => Onboarding1()),
       );
     });
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xFF0E9CF9), Color(0xffAFE2FF)],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft),
        ),
        child: Container(
          width:double.infinity, //
         // تحديد عرض الصورة
          height: 600, //// تحديد ارتفاع الصورة

          //color: Colors.red,
        margin: EdgeInsets.only(left: 100),
          child: Stack(
           // لتحديد عرض الجزء المراد عرضه من الصورة

            children:
            [

              Positioned(
               top: 230,




              child: ImageFiltered(


                  imageFilter: ImageFilter.blur(),
                  child: Image.asset('images/Layer_2.png',
                    //fit: BoxFit.cover,
                      ),
              ),

            ),]
          ),
        ),
      ),
    );
  }
}
