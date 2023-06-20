import 'dart:ui';

import 'package:finalprojectflutter/Screens/Onboarding2.dart';
import 'package:finalprojectflutter/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class Onboarding1 extends StatefulWidget {
  const Onboarding1({Key? key}) : super(key: key);

  @override
  State<Onboarding1> createState() => _Onboarding1State();
}

class _Onboarding1State extends State<Onboarding1> {
  @override
  Widget build(BuildContext context) {
  return  Scaffold(

    body: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      SizedBox(height: 100,),

    Expanded(
    flex:4,
    child: Container(
      width: 600,
    height: 600,
    child: Center(
    child: ImageFiltered(
    imageFilter: ImageFilter.blur(),
    child: Image.asset("images/mobile1.png"),
    ),
    ),
    ),
    ),
    Expanded(
    flex: 2,
    child: Container(

    ),
    ),

    Expanded(
    flex: 1,
    child: Container(
    child: Center(
    child: Column(
    children: [
      Text(AppLocalizations.of(context)!.p??"Fast reservation with technicians",style: TextStyle(color:kTextLightColor,fontSize: 20 )), Text('and craftsmen',style: TextStyle(color:kTextLightColor,fontSize: 20 )),
    ],
    ),
    ),
    ),
    ),
    Spacer(),
    Expanded(
    flex: 1,
     child:   Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: double.infinity,
            height: 40,
            child: TextButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Onboarding2()),
              );
            }, child: Text(AppLocalizations.of(context)!.next??"Next",style: TextStyle(
              color: Colors.white,
              fontSize: 20
            ),
            ),
                style: ButtonStyle(backgroundColor:MaterialStateProperty.all<Color>(kTextLightColor))),
          ),
        ),

    ),
      SizedBox(height: 20,)




    ],
    ),);
  }
}
