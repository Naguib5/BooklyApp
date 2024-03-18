import 'package:flutter/material.dart';

class ShimmerFeaturedListView extends StatelessWidget {
  const ShimmerFeaturedListView({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .24,
        child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: ((context, index) {
              return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      color: Colors.white,
                      child: const AspectRatio(
                        aspectRatio: 2.6 / 4,
                      ),
                    ),
                  ));
            })),
      ),
    );
  }
}
