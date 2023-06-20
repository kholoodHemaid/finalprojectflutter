import 'dart:ui';

import 'package:finalprojectflutter/Screens/Onboarding3.dart';
import 'package:finalprojectflutter/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class Onboarding2 extends StatefulWidget {
  const Onboarding2({Key? key}) : super(key: key);

  @override
  State<Onboarding2> createState() => _Onboarding2State();
}

class _Onboarding2State extends State<Onboarding2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

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
                  child: Image.asset("images/mobile2.png"),
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
                    MaterialPageRoute(builder: (context) => Onboarding3()),
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
