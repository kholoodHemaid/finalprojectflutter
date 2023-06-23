import 'package:finalprojectflutter/constant.dart';
import 'package:finalprojectflutter/widgets/MyCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class GettingStarted1 extends StatefulWidget {
  const GettingStarted1({Key? key}) : super(key: key);

  @override
  State<GettingStarted1> createState() => _GettingStarted1State();
}

class _GettingStarted1State extends State<GettingStarted1> {
  @override
  Widget build(BuildContext context) {

    return


       Column(
         children: [
           Expanded(
             flex: 1,
             child: Container(
               height: 200,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.vertical(
                   bottom: Radius.circular(60),
                 ),
                 gradient: LinearGradient(
                     colors: [kTextLightColor, Color(0xffAFFFFF)],
                     begin: Alignment.bottomLeft,
                     end: Alignment.centerRight),
                 color: kTextLightColor,
               ),
               width: double.infinity,
               child: Stack(
                 alignment: Alignment.topCenter,
                 children: [
                   Container(
                     width: 120,
                     height: 120,
                     child: Padding(
                       padding: const EdgeInsets.only(top: 20),
                       child: Align(
                         alignment: Alignment.topCenter,
                         child: Image.asset(
                           "images/eee.png",
                           fit: BoxFit.contain,
                           width: 50,
                           height: 50,
                         ),
                       ),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(
                       top: 45,
                       left: 40,
                     ),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text(
                           'Home',
                           style: TextStyle(
                               color: Colors.white,
                               fontSize: 10,
                               fontWeight: FontWeight.bold),
                         ),
                         Text(
                           'Service',
                           style: TextStyle(color: Colors.white, fontSize: 5),
                         ),
                       ],
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(20),
                     child: Align(
                       child: IconButton(
                         onPressed: () {
                           Navigator.pop(context);
                         },
                         icon: Icon(Icons.arrow_back_ios_outlined,
                             color: Colors.white),
                       ),
                       alignment: AlignmentDirectional.topStart,
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(20),
                     child: Align(
                       child: IconButton(
                         onPressed: () {},
                         icon: Icon(
                           Icons.notifications_none,
                           color: Colors.white,
                           size: 25,
                         ),
                       ),
                       alignment: AlignmentDirectional.topEnd,
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(top: 70),
                     child: Align(
                       alignment: AlignmentDirectional.center,
                       child: Container(
                         width: 250,
                         height: 40,
                         decoration: BoxDecoration(
                             boxShadow: [
                               BoxShadow(
                                 color: Colors.grey.withOpacity(0.5),
                                 spreadRadius: 2,
                                 blurRadius: 5,
                                 offset: Offset(0, 3),
                               ),
                             ],
                             color: Colors.white,
                             borderRadius: BorderRadius.all(
                               Radius.circular(10),
                             )),
                       ),
                     ),
                   ),
                 ],
               ),
             ),
           ),
           Container(

             padding: const EdgeInsets.only(top: 20),
             child: Text(
                 AppLocalizations.of(context)!.selectservic ??
                     "Select Service",
                 style: TextStyle(color: kTextLightColor, fontSize: 18)),
           ),
           Expanded(
             flex: 3,
             child: Container(
               padding: EdgeInsetsDirectional.all(15),
               decoration: BoxDecoration(color: Colors.white),
               child: GridView(
                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                     crossAxisCount: 3,
                   childAspectRatio: 1,),
                      children: [




                       MyCard(
                           nameImage: 'images/1.png',
                           text: AppLocalizations.of(context)!.carpenter ??
                               "Carpenter"),
                       MyCard(
                           nameImage: 'images/2.png',
                           text: AppLocalizations.of(context)!.carpenter ??
                               "Carpenter"),
                        MyCard(
                            nameImage: 'images/3.png',
                            text: AppLocalizations.of(context)!.carpenter ??
                                "Carpenter"),
                        MyCard(
                            nameImage: 'images/4.png',
                            text: AppLocalizations.of(context)!.carpenter ??
                                "Carpenter"),
                        MyCard(
                            nameImage: 'images/5.png',
                            text: AppLocalizations.of(context)!.carpenter ??
                                "Carpenter"),
                        MyCard(
                            nameImage: 'images/6.png',
                            text: AppLocalizations.of(context)!.carpenter ??
                                "Carpenter"),
                        MyCard(
                            nameImage: 'images/7.png',
                            text: AppLocalizations.of(context)!.carpenter ??
                                "Carpenter"),
                        MyCard(
                            nameImage: 'images/1.png',
                            text: AppLocalizations.of(context)!.carpenter ??
                                "Carpenter"),
                        MyCard(
                            nameImage: 'images/5.png',
                            text: AppLocalizations.of(context)!.carpenter ??
                                "Carpenter"),
                        MyCard(
                            nameImage: 'images/1.png',
                            text: AppLocalizations.of(context)!.carpenter ??
                                "Carpenter"),
                        MyCard(
                            nameImage: 'images/2.png',
                            text: AppLocalizations.of(context)!.carpenter ??
                                "Carpenter"),
                        MyCard(
                            nameImage: 'images/3.png',
                            text: AppLocalizations.of(context)!.carpenter ??
                                "Carpenter"),
    ],



               ),
             ),
           ),

         ],

       );
  }
}
