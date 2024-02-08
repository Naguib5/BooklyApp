import 'package:flutter/material.dart';

class BookDetaielsBody extends StatelessWidget {
  const BookDetaielsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [CustomAppBookDetaielsAppBar()],
      ),
    );
  }
}

class CustomAppBookDetaielsAppBar extends StatelessWidget {
  const CustomAppBookDetaielsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.close),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
    );
  }
}
