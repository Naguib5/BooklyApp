import 'package:bookly/Features/home/presentation/views/widgets/newset_widget/Newset_item_listview.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_app_par.dart';
import 'package:bookly/Features/home/presentation/views/widgets/featured_widget/featured_list_view.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      scrollBehavior: ScrollBehavior(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18),
                child: CustomAppBar(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: FeaturedBookListView(),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'NewSet Books',
                  style: Styles.textStyle18,
                ),
              ),
              SizedBox(
                height: 2,
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: NewsetItemListView(),
          ),
        ),
      ],
    );
  }
}
