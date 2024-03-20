import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/Features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_app_book_detaiels_appbar.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetaielsSection extends StatelessWidget {
  const BookDetaielsSection({super.key, required this.book});
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const CustomAppBookDetaielsAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .19),
          child: CustomBookImage(
              imageUrl: book.volumeInfo.imageLinks?.thumbnail ?? ""),
        ),
        const SizedBox(
          height: 43,
        ),
        Text(
          book.volumeInfo.title!,
          style: Styles.textStyle30.copyWith(
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            book.volumeInfo.authors?.first ?? "",
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        BookRating(
          rating: book.volumeInfo.maturityRating.toString(),
          count: book.volumeInfo.pageCount!,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 30,
        ),
        ActionButton(
          bookModel: book,
        ),
      ],
    );
  }
}
