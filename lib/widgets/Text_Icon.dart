import 'package:flutter/material.dart';
class Text_Icon extends StatelessWidget {
  final String ? text;
  final IconData ? iconsdata;
  final String  textoptional;
  const Text_Icon({
   required this.text,required this.iconsdata, this.textoptional =''
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          //  SizedBox(height: 20,),
          Text("$text  ",style: TextStyle(color:Colors.black87,fontSize: 20,fontWeight: FontWeight.w400, )),
          Row(
            children: [
              Text('$textoptional  ',style: TextStyle(color:Colors.grey,fontSize: 18,fontWeight: FontWeight.w400, )),

              Icon(iconsdata,color: Colors.grey,size: 18),
            ],
          ),
        ],
      ),
    );
  }
}