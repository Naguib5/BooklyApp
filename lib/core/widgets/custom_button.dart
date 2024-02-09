import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.borderRadius,
      required this.backgroundColor,
      required this.textcolor,
      required this.text,
      this.fontsize});
  final BorderRadiusGeometry? borderRadius;
  final Color backgroundColor;
  final Color textcolor;
  final String text;
  final double? fontsize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(12),
            )),
        onPressed: () {},
        child: Text(
          text,
          style: Styles.textStyle20.copyWith(
            fontWeight: FontWeight.bold,
            color: textcolor,
            fontSize: fontsize,
          ),
        ),
      ),
    );
  }
}
