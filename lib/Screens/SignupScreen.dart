import 'package:finalprojectflutter/Screens/%20Login_Filled.dart';
import 'package:finalprojectflutter/Screens/GettingStartedScreen.dart';
import 'package:finalprojectflutter/constant.dart';
import 'package:finalprojectflutter/widgets/TextFiledWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool _isChecked = false;
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
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
                child: Stack(
                  alignment: Alignment.center,
                  children: [ Container(
                    width: 150,
                    height: 100,

                    child: Center(
                      child: Image.asset(
                        "images/Layer_21.png",
                        fit: BoxFit.contain,
                        width: 150,
                        height: 100,
                      ),

                    ),


                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 120,top: 40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Home',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                          Text('Service',style: TextStyle(color: Colors.white),),
                      ],
                    ),
                  ),

                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Expanded(
              flex: 3,
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
                            onPressed: () {
                              setState(() {
                                Container(
                                  width: 10,
                                  height: 2,
                                  color: kTextLightColor,
                                );
                              });
                            },
                            child: Text(AppLocalizations.of(context)!.customer??"Customer"),
                          ),
                        ],
                      ),
                      SizedBox(height: 17),
                      Padding(
                        padding: const EdgeInsets.all(3),
                        child: Align(
                          alignment: Alignment.center,
                          child: Column(

                            children: [
                              // TextFiledWidget(
                              //     obsecure: false,
                              //     inputType: TextInputType.number,hintText: "50000",
                              //         prefixIcon: 'images/number.png',),
                            TextField(
                            maxLines: 1,
                            textAlign: TextAlign.left,

                            obscureText: false,
                            keyboardType: TextInputType.number,


                            decoration: InputDecoration(

                              //label: Text('$LabelText'),
                              hintText: ('50000'),
                              //   fillColor: Colors.black,

                                prefix:  Image.asset('images/number.png',width: 100,height: 15),
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
                              SizedBox(height: 8),
                              TextField(
                                maxLines: 1,
                                textAlign: TextAlign.center,

                                obscureText: true,
                                keyboardType: TextInputType.number,


                                decoration: InputDecoration(

                                  //label: Text('$LabelText'),
                                  fillColor: Colors.grey,
                                  hintText: ('********'),
                                  suffixIcon: Icon(Icons.remove_red_eye_outlined),
                                  //   fillColor: Colors.black,

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
                              // TextFiledWidget(
                              //   obsecure: true,
                              //   inputType: TextInputType.number,hintText: "********",suffixIcon: Icons.remove_red_eye_sharp,
                              // ),
                              SizedBox(height: 10),
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
                                        Text(AppLocalizations.of(context)!.remberme??"Rember me"),

                                      ],
                                    ),
                                  ),
                                  Text(AppLocalizations.of(context)!.forgotpassword??"Forget Password ?"),

                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [


                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [

                                      Text(
                                        AppLocalizations.of(context)!.haveaccount??"Have Account ? ",
                                        style: TextStyle(color: Colors.black),
                                      ),

                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: TextButton(

                                          onPressed: () {
                                            Navigator.pushReplacementNamed(
                                              context, '/login_filled',
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

                                  Container(
                                    width: 140, // set the width
                                    height: 40,
                                    decoration: UnderlineTabIndicator(
                                      borderSide: BorderSide(width: 2,color: kTextLightColor)
                                    ),
                                    child: TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Login_Filled()),
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
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: TextButton(
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => thirdScreen()),
                    // );
                  },
                  child: Text(
                    AppLocalizations.of(context)!.getstartnow??"Get Start Now -->",
                    style: TextStyle(color: Colors.black, fontSize: 15),
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
