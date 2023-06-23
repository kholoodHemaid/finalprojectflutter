import 'package:dotted_border/dotted_border.dart';
import 'package:finalprojectflutter/constant.dart';
import 'package:finalprojectflutter/widgets/TextFiledWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class CardInfo extends StatefulWidget {
  const CardInfo({Key? key}) : super(key: key);

  @override
  State<CardInfo> createState() => _CardInfoState();
}

class _CardInfoState extends State<CardInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
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
                      height: 130,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              'Smith',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 45,
                        left: 40,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Align(
                        child: Container(
                          color: Colors.white38,
                          width: 35,
                          height: 35,
                          child: Center(
                            child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(Icons.arrow_back_ios_outlined,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        alignment: AlignmentDirectional.topStart,
                      ),
                    ),

                  ],

                ),

              ),

            ),

            Expanded(
              flex:2,
              child: Container(

                child: Column(

                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50,top: 10
                      ),
                      child: Container(

                        decoration: BoxDecoration(


                          border: Border.all(
                            style: BorderStyle.none,
                          ),
                        ),
                        child: Row(
                          children: [

                            Image.asset(
                              'images/graph.png',
                              width: 300,
                              height: 150,
                            ),


                          ],
                        ),

                      ),

                    ),



                  ],
                ),

              ),
            ),
            Expanded(
              flex:3,
              child: Container(
                child: Column(
                  children: [

                    Container(
                      margin: EdgeInsets.only(right: 20),

                      decoration: BoxDecoration(

                        border: Border.all(
                          color: Colors.grey,
                          width: 2,

                        ),
                      ),
                      width: 350,
                      height:100,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'More Details About Problem …...',
                          enabledBorder: OutlineInputBorder(

                            borderSide: BorderSide(style: BorderStyle.none),
                            borderRadius: BorderRadius.circular(3),


                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(style: BorderStyle.none),
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),
                      ),
                      // child: Text(
                      //   'More Details About Problem …...',style: TextStyle(color: Colors.grey),
                      // ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(30),
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: '5000',
                          prefix: Image.asset('images/number.png',width: 100,height: 20,),
                          enabledBorder: OutlineInputBorder(

                            borderSide: BorderSide(style: BorderStyle.solid,width:.4),
                            borderRadius: BorderRadius.circular(3),



                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(style: BorderStyle.solid,color: kTextLightColor),
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),
                      ),
                    ),
                  ],



                ),

              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 20,vertical: 10),
              child: Container(
                width: double.infinity,
                height: 40,
                child: TextButton(onPressed: (){
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => ThirdScreen()),
                  // );
                }, child: Text(AppLocalizations.of(context)!.addorder ??'Add Order',style: TextStyle(
                  color: Colors.white,
                ),
                ),
                    style: ButtonStyle(backgroundColor:MaterialStateProperty.all<Color>(Colors.black))),
              ),
            ),

            // Expanded(
            //   flex: 3,
            //   child: Container(
            //     child: Column(
            //       children: [
            //         SizedBox(height: 40,),
            //         Container(
            //           margin: EdgeInsets.only(right: 20),
            //           padding: EdgeInsets.all(10),
            //           decoration: BoxDecoration(
            //
            //             border: Border.all(
            //               color: Colors.grey,
            //               width: 2,
            //
            //             ),
            //           ),
            //           width: 300,
            //           height: 200,
            //           child: TextField(
            //             decoration: InputDecoration(
            //               hintText: 'More Details About Problem …...',
            //               enabledBorder: OutlineInputBorder(
            //
            //                 borderSide: BorderSide(style: BorderStyle.none),
            //                 borderRadius: BorderRadius.circular(3),
            //
            //
            //               ),
            //               focusedBorder: OutlineInputBorder(
            //                 borderSide: BorderSide(style: BorderStyle.none),
            //                 borderRadius: BorderRadius.circular(3),
            //               ),
            //             ),
            //           ),
            //           // child: Text(
            //           //   'More Details About Problem …...',style: TextStyle(color: Colors.grey),
            //           // ),
            //         ),
            //       ],
            //
            //
            //     ),
            //   ),
            // ),
            // SizedBox(height: 100,),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Container(
            //     width: double.infinity,
            //     height: 40,
            //     child: TextButton(onPressed: (){
            //       // Navigator.push(
            //       //   context,
            //       //   MaterialPageRoute(builder: (context) => ThirdScreen()),
            //       // );
            //     }, child: Text(AppLocalizations.of(context)!.next ??'Next',style: TextStyle(
            //       color: Colors.white,
            //     ),
            //     ),
            //         style: ButtonStyle(backgroundColor:MaterialStateProperty.all<Color>(Colors.black))),
            //   ),
            // ),



          ],
        ),
      ),
    );
  }
}
