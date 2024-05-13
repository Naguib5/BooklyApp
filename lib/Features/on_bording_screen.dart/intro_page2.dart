import 'package:flutter/material.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff24678E),
      child: Image.asset(
        "assets/images/image2.gif",
        fit: BoxFit.values[5],
      ),
    );
  }
}
