import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 4 / 2.7, //  width size /height size
      child: Container(
        // height: 50,
        // width: 50,
        // height: MediaQuery.of(context).size.height * 0.3,
        // width: MediaQuery.of(context).size.width * 0.3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: const DecorationImage(
            image: AssetImage(AssetsData.testImage),
          ),
        ),
      ),
    );
  }
}
