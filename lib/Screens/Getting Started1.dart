import 'package:finalprojectflutter/constant.dart';
import 'package:flutter/material.dart';

class GettingStarted1 extends StatefulWidget {
  const GettingStarted1({Key? key}) : super(key: key);

  @override
  State<GettingStarted1> createState() => _GettingStarted1State();
}

class _GettingStarted1State extends State<GettingStarted1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: 500,
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
                      child: Center(
                        child: Image.asset(
                          "images/Layer_21.png",
                          fit: BoxFit.contain,
                          width: 50,
                          height: 50,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40,),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Home',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Service',
                            style: TextStyle(color: Colors.white,fontSize: 10),
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
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.notifications_none,
                              color: Colors.white,size: 25,),
                        ),
                        alignment: AlignmentDirectional.topEnd,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 100),
                      child: Align(
                        alignment: AlignmentDirectional.center,
                        child: Container(
                            width: 250,height: 40,

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

                                )
                         ),
                        ),
                        ),

                      ),

                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
                child: Container(
decoration: BoxDecoration(
  color: Colors.white
),
            ),)
          ],
        ),
      ),
    );
  }
}
