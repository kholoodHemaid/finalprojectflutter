import 'dart:ui';

import 'package:finalprojectflutter/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
              padding: const EdgeInsets.only(top: 50, left: 15),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Icon(Icons.cancel_presentation_rounded)),
            ),
            SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                padding: EdgeInsets.only(top: 40, right: 30),
                child: ImageFiltered(
                  imageFilter: ImageFilter.blur(),
                  child: Image.asset(
                    "images/illustration.png",
                    width: double.infinity,
                  ),
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
              Text(AppLocalizations.of(context)!.order ?? "ORDER ",style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.normal,),),
              Text(AppLocalizations.of(context)!.done ?? "DONE ",style: TextStyle(color: kTextLightColor,fontSize: 24,fontWeight: FontWeight.normal)),
            ]),

            Container(
              //color: Colors.amberAccent,
              width: double.infinity,
              child: Column(

                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 10,),
                  SizedBox(width: 10,),
                  Text(AppLocalizations.of(context)!.p3??"The ORDER has been sent. A technician will ",style: TextStyle(color:Colors.black,fontSize: 12,fontWeight: FontWeight.w400, )), Text(AppLocalizations.of(context)!.p32??"Conect you ",style: TextStyle(color:Colors.black,fontSize: 12,fontWeight: FontWeight.w400  )),
                  Padding(
                    padding: const EdgeInsetsDirectional.symmetric(horizontal: 20,vertical: 10),
                    child: Container(
                      width: double.infinity,
                      height: 40,
                      child: TextButton(onPressed: (){
                        // Navigator.pushReplacementNamed(
                        //   context,
                        //   'gettingstarted1')
                        // );
                      }, child: Text(AppLocalizations.of(context)!.gotohome ??'Go TO Home',style: TextStyle(
                        color: Colors.white,
                      ),
                      ),
                          style: ButtonStyle(backgroundColor:MaterialStateProperty.all<Color>(kTextLightColor))),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
