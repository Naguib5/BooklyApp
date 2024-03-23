import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class TwoRowTextWithOpacity extends StatelessWidget {
  const TwoRowTextWithOpacity(
      {super.key,
      required this.bookModel,
      required this.text1,
      required this.text2});
  final BookModel bookModel;
  final Text text1;
  final Text text2;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Opacity(opacity: 0.7, child: text1),
        Opacity(opacity: 0.9, child: text2),
      ],
    );
  }
}
