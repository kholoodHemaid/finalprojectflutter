import 'package:flutter/material.dart';
class GettingStartedScreen extends StatefulWidget {
  const GettingStartedScreen({Key? key}) : super(key: key);

  @override
  State<GettingStartedScreen> createState() => _GettingStartedScreenState();
}

class _GettingStartedScreenState extends State<GettingStartedScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(70),
                  bottomLeft: Radius.circular(70)),
              color: Color(0xFF0E9CF9),
            ),
            width: double.infinity,

          ),
        ),
        Center(
          child: Image.asset("images/Layer_21.png"),
        ),
      ],
    );
  }
}
