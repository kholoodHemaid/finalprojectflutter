import 'package:finalprojectflutter/constant.dart';
import 'package:flutter/material.dart';
class TextFiledWidget extends StatelessWidget {
  String ? hintText;
  String ? LabelText;
  final TextInputType inputType;
  final bool obsecure;

  final IconData ?prefixIcon  ;
  final IconData ?suffixIcon;

   TextFiledWidget(
      {
    this.hintText,this.LabelText, required this.inputType,required this.obsecure,this.prefixIcon,this.suffixIcon
        ,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
     maxLines: 1,
      textAlign: TextAlign.center,

      obscureText: obsecure,
      keyboardType: inputType,


      decoration: InputDecoration(

        //label: Text('$LabelText'),
        hintText: ('$hintText'),
        //   fillColor: Colors.black,
        suffixIcon: Icon(suffixIcon),
        prefix:  Icon(prefixIcon),
        enabledBorder: OutlineInputBorder(

          borderSide: BorderSide(style: BorderStyle.solid,width:.4),
          borderRadius: BorderRadius.circular(3),


        ),


        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(style: BorderStyle.solid,color: kTextLightColor),
          borderRadius: BorderRadius.circular(3),
        ),

      ),
    );
  }
}
