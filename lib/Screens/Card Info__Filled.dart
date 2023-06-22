import 'dart:ui';

import 'package:flutter/material.dart';
class CardInfo__Filled extends StatefulWidget {
  const CardInfo__Filled({Key? key}) : super(key: key);

  @override
  State<CardInfo__Filled> createState() => _CardInfo__FilledState();
}

class _CardInfo__FilledState extends State<CardInfo__Filled> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
      color: Colors.white,
       child: Column(
         children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
               padding: EdgeInsets.only(top: 40,),

               child: ImageFiltered(
                 imageFilter: ImageFilter.blur(),
                 child: Image.asset("images/illustration.png",width:double.infinity),
               ),
           ),
            ),
         ],
       ),

    ),
    );
  }
}