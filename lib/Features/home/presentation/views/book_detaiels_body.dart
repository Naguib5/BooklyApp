import 'package:bookly/Features/home/presentation/views/widgets/custom_app_book_detaiels_appbar.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class BookDetaielsBody extends StatelessWidget {
  const BookDetaielsBody({super.key});
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomAppBookDetaielsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .19),
            child: const CustomBookImage(),
          ),
        ],
      ),
    );
  }
}
