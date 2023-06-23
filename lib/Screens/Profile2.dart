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
      body: Stack(
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(

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
                  top:15,
                  child: Container(
                    width: 120,
                    height: 130,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                              AppLocalizations.of(context)!.order ?? 'Order',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 65,
                    left: 40,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Align(
                    child: Container(
                      color: Colors.white60,
                      width: 40,
                      height: 40,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back_ios_outlined,
                            color: Colors.white),
                      ),
                    ),
                    alignment: AlignmentDirectional.topStart,
                  ),
                ),

              ],

            )
          ),
          Container(
            child: Stack(

              children: [


                Positioned(
                  top: 120,
                  child: Container(
                    width: 411,
                    height: 160,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Align(
                            alignment: Alignment.center,

                            child: Padding(
                              padding: const EdgeInsets.only(left: 230),
                              child: Icon(Icons.edit),
                            )),
                        //  SizedBox(height: 20,),
                        Text("Seraj Al Mutawa ",style: TextStyle(color:Colors.black,fontSize: 22,fontWeight: FontWeight.bold, )),

                        Text("Riyadh, Saudi Arabia ",style: TextStyle(color:Colors.black,fontSize: 14,fontWeight: FontWeight.w400  )),
                        SizedBox(height: 10,),
                      ],
                    ),

                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(

                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,

                          blurRadius: 5,

                        ),
                      ],
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(12),
                          bottomLeft: Radius.circular(12),
                          topLeft:  Radius.circular(12),
                          topRight: Radius.circular(12)),
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  top:100,
                  right: 150,

                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(12),
                          bottomLeft: Radius.circular(12),
                          topLeft:  Radius.circular(12),
                          topRight: Radius.circular(12)),
                      color: Colors.white,
                    ),
                    child: Image.asset('images/img.png',width:150,height: 150,),


                  ),
                ),
                Positioned(
                  top:300,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(7),
                          bottomLeft: Radius.circular(7),
                          topLeft:  Radius.circular(7),
                          topRight: Radius.circular(7)),
                      boxShadow: [
                        BoxShadow(

                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,

                          blurRadius: 5,

                        ),
                      ],
                      color: Colors.white,
                    ),
                    width: 410,
                    height: 400,

                    child: Column(
                      children: [

                        Text_Icon(text:AppLocalizations.of(context)!.languge ?? 'Languge',iconsdata: Icons.arrow_forward_ios_outlined,textoptional: 'English   '),
                        Text_Icon(text:AppLocalizations.of(context)!.myrate ?? 'My Rates',iconsdata: Icons.arrow_forward_ios_outlined,),
                        Text_Icon(text:AppLocalizations.of(context)!.contact ?? 'Contact us',iconsdata: Icons.arrow_forward_ios_outlined,),
                        Text_Icon(text:AppLocalizations.of(context)!.shareapp ?? 'Share App',iconsdata: Icons.arrow_forward_ios_outlined,),

                        Container(
                          width: double.infinity,
                          height: 40,
                          child: TextButton(onPressed: (){
                            // Navigator.pushReplacementNamed(
                            //   context,
                            //   'gettingstarted1')
                            // );
                          }, child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.output_rounded,color: Color(0xffAF8344),size: 22),
                              SizedBox(width: 10,),
                              Text(AppLocalizations.of(context)!.singout ??'Sing Out',style: TextStyle(
                                  color: kTextLightColor,fontSize: 18
                              ),
                              ),
                            ],
                          ),
                              style: ButtonStyle(backgroundColor:MaterialStateProperty.all<Color>(Colors.white))),
                        ),



                      ],
                    ),
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
