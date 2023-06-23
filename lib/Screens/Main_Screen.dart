import 'package:finalprojectflutter/Model.dart';
import 'package:finalprojectflutter/Screens/Getting%20Started1.dart';
import 'package:finalprojectflutter/Screens/Profile.dart';
import 'package:finalprojectflutter/Screens/Profile2.dart';
import 'package:finalprojectflutter/constant.dart';
import 'package:flutter/material.dart';
class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

List<BottonNavModel> bottomnav = <BottonNavModel>[
  BottonNavModel(
    GettingStarted1(),
  ),
  BottonNavModel(
    GettingStarted1(),
  ),
  BottonNavModel(
    Profile(),
  ),
  BottonNavModel(
    Profile2(),
  ),
];
class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:BottomNavigationBar(
        showSelectedLabels: true,

        backgroundColor: kTextLightColor,
        showUnselectedLabels: true,
        selectedIconTheme: IconThemeData(color: Colors.amber),
        selectedLabelStyle: TextStyle(fontSize: 15),


        unselectedLabelStyle: TextStyle(fontSize: 15),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,


        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
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
      body: bottomnav.elementAt(currentIndex).screen,
    );
  }
}
