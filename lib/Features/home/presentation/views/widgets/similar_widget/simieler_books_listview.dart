import 'package:bookly/Features/home/presentation/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly/Features/home/presentation/views/widgets/shimmer_widget/shimmer_featured_list_view.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/widgets/custom_progress_indecator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart';

class SimilerBooksListview extends StatelessWidget {
  const SimilerBooksListview({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: ListView.builder(
                itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.kbookdetaiels,
                          extra: state.books[index]);
                    },
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: CustomBookImage(
                          imageUrl: state.books[index].volumeInfo.imageLinks
                                  ?.thumbnail ??
                              "",
                        )),
                  );
                })),
          );
        } else if (state is SimilarBooksFailure) {
          return Shimmer.fromColors(
            baseColor: Colors.grey[500]!,
            highlightColor: Colors.grey[100]!,
            child: const ShimmerFeaturedListView(),
          );
          // CustomWidgetError(
          //   msgError: state.errMessage,
          // );
        } else {
          return const CustomProgressIndecator();
        }
      },
    );
  }
}
