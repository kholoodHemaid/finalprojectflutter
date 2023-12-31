import 'package:finalprojectflutter/Screens/Getting%20Started1.dart';
import 'package:finalprojectflutter/Screens/Main_Screen.dart';
import 'package:finalprojectflutter/Screens/SignupScreen.dart';
import 'package:finalprojectflutter/constant.dart';
import 'package:finalprojectflutter/widgets/TextFiledWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class Login_Filled extends StatefulWidget {
  const Login_Filled({Key? key}) : super(key: key);

  @override
  State<Login_Filled> createState() => _Login_FilledState();
}

class _Login_FilledState extends State<Login_Filled> {
  @override
  String _selectedValue = 'one';
  bool _isChecked = false;
  bool isPressed = false;

  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(

        child: Column(

          children: [
            Expanded(
              flex: 1,
              child: Container(

                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [kTextLightColor, Color(0xffAFFFFF)],
                      begin: Alignment.bottomLeft,
                      end: Alignment.centerRight),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                  color: kTextLightColor,
                ),
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Align(child: IconButton(onPressed: (){
                    Navigator.pop(context);
                  },icon: Icon(Icons.arrow_back_ios_outlined,color: Colors.white),),
                  alignment: AlignmentDirectional.topStart,),
                ),

              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(AppLocalizations.of(context)!.serviceprovider??"Service Provider"),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(AppLocalizations.of(context)!.customer??"Customer"),
                          ),
                        ],
                      ),
                      SizedBox(height: 7),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            TextFiledWidget(
                                obsecure: false,
                                inputType: TextInputType.name,hintText:AppLocalizations.of(context)!.fullname??"Full Name",),
                            SizedBox(height: 5),
                            TextFiledWidget(
                              obsecure: true,
                              inputType:TextInputType.emailAddress,
                            hintText:AppLocalizations.of(context)!.email??"Email",
                            ),

                            SizedBox(height: 5),
                            TextFiledWidget(
                              obsecure: true,
                              inputType: TextInputType.number,
                              hintText:"500000",
                            ),
                            SizedBox(height: 5),
                            TextFiledWidget(
                              obsecure: true,
                              inputType: TextInputType.number,
                              hintText:"**********",suffixIcon: Icons.remove_red_eye_sharp,
                            ),
                            SizedBox(height: 5),


                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Checkbox(
                                        value: _isChecked,
                                        onChanged: (value) {
                                          setState(
                                                () {
                                              _isChecked = value!;
                                            },
                                          );
                                        },
                                        shape: CircleBorder(),
                                      ),
                                      Text(AppLocalizations.of(context)!.ptwo??"I Read and Accept Home Service Terms & Conditions",style: TextStyle(fontSize: 12),),
                                    ],
                                  ),
                                ),

                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // RichText(
                                //   text: const TextSpan(
                                //       text: 'New Member?\n',
                                //       style: TextStyle(color: Colors.black),
                                //       children: [
                                //         TextSpan(
                                //           text: 'Sign in',
                                //           style: TextStyle(
                                //             color: kTextLightColor,
                                //             fontSize: 15,
                                //             decoration: TextDecoration.underline,
                                //           ),
                                //         ),
                                //       ]
                                //   ),
                                // ),

                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [

                                    Text(
                                      AppLocalizations.of(context)!.haveaccount??"Have Account ",
                                      style: TextStyle(color: Colors.black),
                                    ),

                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: TextButton(

                                        onPressed: () {
                                          Navigator.push(
                                            context, MaterialPageRoute(
                                            builder: (context) =>
                                                MainScreen()),
                                          );

                                          setState(() {
                                            isPressed = !isPressed;
                                          });
                                        },
                                        child: Text(AppLocalizations.of(context)!.singin??"Sing in",
                                          style: TextStyle(
                                            color: kTextLightColor,
                                          ),),
                                        style: ButtonStyle(

                                          backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.transparent),
                                        )
                                        ,),

                                    ),
                                    Container(
                                      padding: EdgeInsets.only(bottom: 2),
                                      decoration: BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(
                                            color: Colors.blue,
                                            width: 2,
                                          ),
                                        ),
                                      ),)
                                  ],
                                ),

                                SizedBox(
                                  width: 140, // set the width
                                  height: 30,
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                MainScreen()),
                                      );
                                    },
                                    child: Text(AppLocalizations.of(context)!.login??"Login",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),),
                                    style: ButtonStyle(
                                      backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          kTextLightColor),)
                                    ,),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
