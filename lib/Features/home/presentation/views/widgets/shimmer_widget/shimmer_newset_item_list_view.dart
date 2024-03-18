import 'package:flutter/material.dart';

class ShimmerNewsetItemListView extends StatelessWidget {
  const ShimmerNewsetItemListView({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .60,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        scrollDirection: Axis.vertical,
        itemBuilder: ((context, index) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Container(
                  width: 68,
                  height: 120,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: Container(
                        width: 180,
                        height: 24,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: Container(
                        width: 110,
                        height: 18,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(6),
                          child: Container(
                            width: 80,
                            height: 18,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          width: 80,
                        ),
                        ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(100)),
                          child: Container(
                            width: 20,
                            height: 16,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(6),
                          child: Container(
                            width: 25,
                            height: 15,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(6),
                          child: Container(
                            width: 40,
                            height: 15,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 36,
                    )
                  ],
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
