import 'package:finalprojectflutter/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';

import '../widgets/Text_Icon.dart';
class Profile2 extends StatefulWidget {
  const Profile2({Key? key}) : super(key: key);

  @override
  State<Profile2> createState() => _Profile2State();
}

class _Profile2State extends State<Profile2> {
  int currentIndex = 0;
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: kTextLightColor,
        child: BottomNavigationBar(
          showSelectedLabels: true,

          backgroundColor: kTextLightColor,
          showUnselectedLabels: true,
          selectedIconTheme: IconThemeData(color: Colors.amber),
          selectedLabelStyle: TextStyle(fontSize: 15),


          unselectedLabelStyle: TextStyle(fontSize: 15),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,


          currentIndex: currentIndex,
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });

          },



          items: [
            BottomNavigationBarItem(
                icon: Image.asset('images/eee.png',height: 25,width: 25),
                label: "Service",
                backgroundColor: kTextLightColor),
            BottomNavigationBarItem(
                icon: Image.asset('images/order.png',height: 25,width: 25),
                label: "Orders",
                backgroundColor: kTextLightColor
            ),
            BottomNavigationBarItem(
                icon: Image.asset('images/user.png',height: 25,width: 25),
                label: "User",
                backgroundColor: kTextLightColor
            ),
            BottomNavigationBarItem(
                icon: Image.asset('images/more.png',height: 25,width: 25),
                label: "More",
                backgroundColor: kTextLightColor
            ),

          ],

        ),

      ),
      body: Column(
        children: [
          Container(
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(45),
              ),
              gradient: LinearGradient(
                  colors: [kTextLightColor, Color(0xffAFFFFF)],
                  begin: Alignment.centerRight,
                  end: Alignment.bottomLeft),
              color: kTextLightColor,
            ),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Positioned(
                  top:25,
                  child: Container(

                    width: 120,
                    height: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(60),
                      ),),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                              AppLocalizations.of(context)!.more?? 'More',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                  ),
                ),

                Positioned(
                  top:15,
                  right: 340,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
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
                              color: Colors.white,size: 20),
                        ),
                      ),
                    ),
                  ),
                ),

              ],

            )
          ),
          Container(
            child: Column(

              children: [




                Container(
                  decoration: BoxDecoration(


                    color: Colors.white,
                  ),
                  width: 410,
                  height: 500,

                  child: ListView(
                    children: [

                      Text_Icon(text:AppLocalizations.of(context)!.changepassword ?? 'Change Password',iconsdata: Icons.arrow_forward_ios_outlined,),
                      Text_Icon(text:AppLocalizations.of(context)!.fqs ?? 'FAQ s',iconsdata: Icons.arrow_forward_ios_outlined,),
                      Text_Icon(text:AppLocalizations.of(context)!.termscondtitions ?? 'Terms & Conditions',iconsdata: Icons.arrow_forward_ios_outlined,),

                      Text_Icon(text:AppLocalizations.of(context)!.termscondtitions ?? 'About App',iconsdata: Icons.arrow_forward_ios_outlined,),
                      Text_Icon(text:AppLocalizations.of(context)!.privicypolicy ?? 'Privacy Policy',iconsdata: Icons.arrow_forward_ios_outlined,),
                      Text_Icon(text:AppLocalizations.of(context)!.rateapp ?? 'Rate App',iconsdata: Icons.arrow_forward_ios_outlined,),
                      Text_Icon(text:AppLocalizations.of(context)!.deleteaccount ?? 'Delete Account',iconsdata: Icons.arrow_forward_ios_outlined,),





                    ],
                  ),
                )
              ],
            ),

          ),
        ],
      ),
    );
  }
}
