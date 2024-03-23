import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/Features/home/presentation/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/Features/home/presentation/views/widgets/detaiels_widget/book_detaiels_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetaielsView extends StatefulWidget {
  const BookDetaielsView({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  State<BookDetaielsView> createState() => _BookDetaielsViewState();
}

class _BookDetaielsViewState extends State<BookDetaielsView> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(
        category: widget.bookModel.volumeInfo.categories!.first);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BookDetaielsBody(
        bookModel: widget.bookModel,
      ),
    );
  }
}
