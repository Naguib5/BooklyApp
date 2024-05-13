import 'package:flutter/material.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          "assets/images/thumb.gif",
          fit: BoxFit.values[6],
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 200),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("Let's go",
                  style: TextStyle(fontSize: 26, color: Colors.lightBlue)),
            ],
          ),
        ),
      ],
    );
  }
}
