import 'package:bookly/Features/home/presentation/views/widgets/book_detaiels_section.dart';
import 'package:bookly/Features/home/presentation/views/widgets/similar_Book_section.dart';
import 'package:flutter/material.dart';

class BookDetaielsBody extends StatelessWidget {
  const BookDetaielsBody({super.key});
  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                BookDetaielsSection(),
                Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                SimilarBooksSection(),
                SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
