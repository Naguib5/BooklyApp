import 'package:bookly/Features/home/presentation/manger/newset_books_cubit/newset_books_cubit.dart';
import 'package:bookly/Features/home/presentation/views/widgets/newset_widget/Newset_list_view_item.dart';
import 'package:bookly/Features/home/presentation/views/widgets/shimmer_widget/shimmer_newset_item_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

class NewsetItemListView extends StatelessWidget {
  const NewsetItemListView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
      builder: (context, state) {
        if (state is NewsetBooksSuccess) {
          return ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: state.books.length,
              padding: EdgeInsets.zero,
              itemBuilder: ((context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: BookListViewItem(
                    bookModel: state.books[index],
                  ),
                );
              }));
        } else if (state is NewsetBooksFailure) {
          return Shimmer.fromColors(
              baseColor: Colors.grey[500]!,
              highlightColor: Colors.grey[100]!,
              child: const ShimmerNewsetItemListView());
          //  CustomWidgetError(msgError: state.errMessage);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
