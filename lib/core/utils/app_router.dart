<<<<<<< HEAD
import 'package:bookly/Features/home/presentation/views/home_view.dart';
import 'package:bookly/Features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const khomeview = '/homeView';
  static final router = GoRouter(routes: [
    GoRoute(
        path: '/',
        builder: (context, state) {
=======
import 'package:bookly/Features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const khomeview = '/homeview';
  static GoRouter router = GoRouter(routes: <RouteBase>[
    GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
>>>>>>> 8c3c30fa699ee3964e1987c282668d13285f3d90
          return const SplashView();
        }),
    GoRoute(
        path: khomeview,
<<<<<<< HEAD
        builder: (context, state) {
          return const HomeView();
=======
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
>>>>>>> 8c3c30fa699ee3964e1987c282668d13285f3d90
        }),
  ]);
}
