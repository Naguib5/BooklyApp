import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 200),
            child: Image.asset(
              "assets/images/image1.gif",
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 180),
            child: Text("Read Free Books",
                style: TextStyle(fontSize: 26, color: kPrimeryColor)),
          ),
        ],
      ),
    );
  }
}
