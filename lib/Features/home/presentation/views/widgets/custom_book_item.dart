import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4, //  width size /height size
      child: Container(
        // height: 50,
        // width: 50,
        // height: MediaQuery.of(context).size.height * 0.3,
        // width: MediaQuery.of(context).size.width * 0.3,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(16),
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AssetsData.testImage),
          ),
        ),
      ),
    );
  }
}
