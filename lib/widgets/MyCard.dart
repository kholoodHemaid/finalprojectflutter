import 'package:flutter/material.dart';
class MyCard extends StatelessWidget {

  String? text;
  String ? nameImage;
  MyCard({required this.text,required this.nameImage});
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 60,
        height: 60,
        margin: EdgeInsets.all(10),

        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(

              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,

              blurRadius: 5,

            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          border: Border.all(color: Color(0xFFDE1487), ),

        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Expanded(
            flex: 1,
            child: Column(children: [
              Image.asset("$nameImage"),
              SizedBox(height:8,),
              Text('$text'),
            ],),
          ),
        )
    );
  }
}
