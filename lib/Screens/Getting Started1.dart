import 'package:finalprojectflutter/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GettingStarted1 extends StatefulWidget {
  const GettingStarted1({Key? key}) : super(key: key);

  @override
  State<GettingStarted1> createState() => _GettingStarted1State();
}

class _GettingStarted1State extends State<GettingStarted1> {
  @override
  Widget build(BuildContext context) {
    int currentIndex =0;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        // showUnselectedLabels: false,
        selectedFontSize: 20,
        unselectedFontSize:20 ,
        selectedItemColor: Color(0xFF8D0000),
        unselectedItemColor: Colors.grey,

        currentIndex: currentIndex,
        onTap: (int index){
          setState(() {
            currentIndex=index;
          });

        },

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",),
          BottomNavigationBarItem(icon: Icon(Icons.notifications),label: "Notifications",),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile",),




        ],
      ),
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
                          "images/g.svg",
                          fit: BoxFit.contain,
                          width: 50,
                          height: 50,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 40,
                      ),
                      // child: Column(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      //   children: [
                      //     Text(
                      //       'Home',
                      //       style: TextStyle(
                      //           color: Colors.white,
                      //           fontSize: 15,
                      //           fontWeight: FontWeight.bold),
                      //     ),
                      //     Text(
                      //       'Service',
                      //       style: TextStyle(color: Colors.white, fontSize: 10),
                      //     ),
                      //   ],
                      // ),
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
                      padding: const EdgeInsets.only(top: 100),
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
              child: Text(AppLocalizations.of(context)!.selectservic??"Select Service",style: TextStyle(color:kTextLightColor,fontSize: 18 )),
            ),
            Expanded(
              flex: 3,
              child: Container(

                decoration: BoxDecoration(color: Colors.white),
                child: GridView.builder(
                  itemCount: 12,
                  padding: const EdgeInsets.all(30),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,

                    crossAxisSpacing: 4.0,
                    mainAxisSpacing: 8.0,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              width: 100,
                              height: 100,

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
                                ),
                              border: Border.all(color: Color(0xFFDE1487), width: 0.3),

                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(children: [
                                Image.asset("images/Layer_21.png",width: 50,height: 50),
                                SizedBox(height: 5,),
                                Text('نص العنصر'),
                              ],),
                            )
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),

            ),

          ],

        ),


      ),
    );
  }
}
