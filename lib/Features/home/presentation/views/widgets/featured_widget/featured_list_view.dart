import 'package:bookly/Features/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly/Features/home/presentation/views/widgets/shimmer_widget/shimmer_featured_list_view.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/widgets/custom_progress_indecator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart';

class FeaturedBookListView extends StatelessWidget {
  const FeaturedBookListView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .27,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: GestureDetector(
                      onTap: () {
                        GoRouter.of(context).push(AppRouter.kbookdetaiels,
                            extra: state.books[index]);
                      },
                      child: CustomBookImage(
                          imageUrl: state.books[index].volumeInfo.imageLinks
                                  ?.thumbnail ??
                              ''),
                    ),
                  );
                })),
          );
        } else if (state is FeaturedBooksFailure) {
          return Shimmer.fromColors(
              baseColor: Colors.grey[500]!,
              highlightColor: Colors.grey[100]!,
              child: const ShimmerFeaturedListView());
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
