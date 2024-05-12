import 'package:bookly/Features/on_bording_screen.dart/intro_page1.dart';
import 'package:bookly/Features/on_bording_screen.dart/intro_page2.dart';
import 'package:bookly/Features/on_bording_screen.dart/intro_page3.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({super.key});
  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController _controller = PageController();
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
              onPageChanged: (index) {
                setState(() {
                  onLastPage = (index == 2);
                });
              },
              controller: _controller,
              children: [
                IntroPage1(), //0
                IntroPage2(), //1
                IntroPage3(), //2
              ]),
          Container(
              alignment: Alignment(0, 0.8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                      onPressed: () {
                        _controller.jumpToPage(2);
                      },
                      child: const Text(
                        "SKIP",
                      )),
                  SmoothPageIndicator(controller: _controller, count: 3),
                  onLastPage
                      ? TextButton(
                          onPressed: () {
                            GoRouter.of(context).push(
                              AppRouter.kloginpage,
                            );
                          },
                          child: const Text("DONE"),
                        )
                      : TextButton(
                          onPressed: () {
                            _controller.nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeIn);
                          },
                          child: const Text("NEXT"),
                        )
                ],
              ))
        ],
      ),
    );
  }
}
