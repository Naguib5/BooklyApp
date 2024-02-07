import 'package:bookly/Features/splash/presentation/views/widget/Sliding_text.dart';
import 'package:bookly/core/utils/app_router.dart';

import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  //make animation objects
  late AnimationController animationController; // 0 to 1
  late Animation<Offset> slidingAnimation; //   0  to infinty

  @override
  void initState() {
    super.initState();
    InitSlidingAnimation();
    navigateToHome();
  }

// lazem aste5tem el dispose 3lashan a3mel kill li el animationcontroller mohom geden 3lashan my7slsh memory lake
  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(
          child: Image.asset(
            AssetsData.logo,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SlidingText(slidingAnimation: slidingAnimation)
      ],
    );
  }

  // ignore: non_constant_identifier_names
  void InitSlidingAnimation() {
    super.initState();
    animationController = // values from 0 to 1
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        // Get.to(() => const HomeView(),
        //     transition: Transition.fade, duration: kTransitionDuration);
        GoRouter.of(context).push(AppRouter.khomeview);
      },
    );
  }
}
