import 'package:finalprojectflutter/constant.dart';
import 'package:finalprojectflutter/widgets/MyCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class ChoiceCard extends StatefulWidget {
  const ChoiceCard({Key? key}) : super(key: key);

  @override
  State<ChoiceCard> createState() => _ChoiceCardState();
}

class _ChoiceCardState extends State<ChoiceCard> {
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
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 400,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          border: Border.all(
                            style: BorderStyle.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
