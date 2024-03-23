import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/Features/home/presentation/views/widgets/detaiels_widget/book_detaiels_section.dart';
import 'package:bookly/Features/home/presentation/views/widgets/similar_widget/similar_Book_section.dart';
import 'package:flutter/material.dart';

class BookDetaielsBody extends StatelessWidget {
  const BookDetaielsBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                BookDetaielsSection(
                  book: bookModel,
                ),
                const Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                const SimilarBooksSection(),
                const SizedBox(
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
