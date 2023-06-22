import 'package:finalprojectflutter/Screens/%20Login_Filled.dart';
import 'package:finalprojectflutter/Screens/Card%20Info__Filled.dart';
import 'package:finalprojectflutter/Screens/CardInfo.dart';
import 'package:finalprojectflutter/Screens/ChoiceCard.dart';
import 'package:finalprojectflutter/Screens/Getting%20Started1.dart';
import 'package:finalprojectflutter/Screens/GettingStartedScreen.dart';
import 'package:finalprojectflutter/Screens/Onboarding1.dart';
import 'package:finalprojectflutter/Screens/Onboarding2.dart';
import 'package:finalprojectflutter/Screens/Onboarding3.dart';
import 'package:finalprojectflutter/Screens/SignupScreen.dart';
import 'package:finalprojectflutter/Screens/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

     debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,

      ],
      supportedLocales: [
        Locale("ar"),
        Locale("en"),
      ],

      // initialRoute: '/splashScreen',
      // routes: {
      //   '/splashScreen': (context) => Splash_Screen(),
      //   'Onboarding1':(context) => Onboarding1(),
      //   'Onboarding2':(context) => Onboarding2(),
      //   'Onboarding3':(context) => Onboarding3(),
      //   '/signupscreen': (context) => SignupScreen(),
      //   '/gettingstartedscreen': (context) => GettingStartedScreen(),
      //   '/login_filled': (context) => Login_Filled(),
      //   '/gettingstarted1': (context) => GettingStarted1(),
      //   '/choicecard': (context) => ChoiceCard(),
     //       '/cardinfo': (context) => CardInfo(),
     //   '/cardinfo__filled': (context) => CardInfo__Filled(),
      //
      // },
      home: CardInfo__Filled(),

    );
  }
}

