import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/Features/home/presentation/views/widgets/detaiels_widget/books_action.dart';
import 'package:bookly/Features/home/presentation/views/widgets/detaiels_widget/custom_app_book_detaiels_appbar.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widgets/two_raw_text_with_opacity.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.book});
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TwoRowTextWithOpacity(
              bookModel: book,
              text1: const Text(
                'language: ',
                style: TextStyle(fontSize: 16),
              ),
              text2: Text(
                '${book.volumeInfo.language}',
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w200),
              ),
            ),
            TwoRowTextWithOpacity(
              bookModel: book,
              text1: const Text(
                'pages: ',
                style: TextStyle(fontSize: 16),
              ),
              text2: Text('${book.volumeInfo.pageCount}',
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w200)),
            )
          ],
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
