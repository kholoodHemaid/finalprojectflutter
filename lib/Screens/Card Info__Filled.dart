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
         crossAxisAlignment: CrossAxisAlignment.start,
         mainAxisAlignment: MainAxisAlignment.start,
         children: [
           Padding(
             padding: const EdgeInsets.only(top:50,left: 15),
             child: Align(
                 alignment: Alignment.topLeft,
                 child: Icon(Icons.cancel_presentation_rounded)),
           ),
           SizedBox(height: 30,),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
               padding: EdgeInsets.only(top: 40,right: 30),

               child: ImageFiltered(
                 imageFilter: ImageFilter.blur(),
                 child: Image.asset("images/illustration.png",width:double.infinity,),
               ),
           ),
            ),
           RichText(
             text: const TextSpan(
                 text: 'New Member?\n',
                 style: TextStyle(color: Colors.black),
                 children: [
                   TextSpan(
                     text: 'Sign in',
                     style: TextStyle(
                       color: Colors.deepPurple,
                       decoration: TextDecoration.underline,
                     ),
                   ),
                 ]),
           ),



         ],
       ),

    ),
    );
  }
}
