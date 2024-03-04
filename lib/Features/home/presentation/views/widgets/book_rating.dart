import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const BookRating(
      {this.mainAxisAlignment = MainAxisAlignment.start,
      required this.rating,
      required this.count});
  final MainAxisAlignment mainAxisAlignment;
  final String rating;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFAE152),
          size: 14,
        ),
        const SizedBox(
          width: 6.3,
        ),
        const Text('4.8', style: Styles.textStyle16),
        const SizedBox(
          width: 5,
        ),
        Opacity(
          opacity: 0.5,
          child: Text('(245)',
              style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w500)),
        ),
      ],
    );
  }
}
