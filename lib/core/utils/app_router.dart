import 'package:bookly/Features/home/presentation/views/book_detaiels_view.dart';
import 'package:bookly/Features/home/presentation/views/home_view.dart';
import 'package:bookly/Features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const khomeview = '/homeview';
  static const kbookdetaiels = '/bookdetaiels';
  static GoRouter router = GoRouter(routes: <RouteBase>[
    GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        }),
    GoRoute(
        path: khomeview,
        builder: (context, state) {
          return const HomeView();
        }),
    GoRoute(
        path: kbookdetaiels,
        builder: (context, state) {
          return const BookDetaielsView();
        }),
  ]);
}
