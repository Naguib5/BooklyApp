import 'package:bookly/Features/auth/login_screen/login_page.dart';
import 'package:bookly/Features/auth/on_bording_screen.dart/on_bording_screen.dart';
import 'package:bookly/Features/auth/sign_up_screen/register_page.dart';
import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/Features/home/presentation/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/Features/home/presentation/views/widgets/detaiels_widget/book_detaiels_view.dart';
import 'package:bookly/Features/home/presentation/views/home_view.dart';
import 'package:bookly/Features/search/presentation/views/search_view.dart';
import 'package:bookly/Features/splash/presentation/views/splash_view.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const khomeview = '/homeview';
  static const ksplashview = '/splashview';
  static const kbookdetaiels = '/bookdetaiels';
  static const ksearchview = '/searchview';
  static const kregisterpage = '/registerpage';
  static const kloginpage = '/loginpage';

  static GoRouter router = GoRouter(routes: <RouteBase>[
    GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return OnBoardingScreen();
        }),
    GoRoute(
        path: ksplashview,
        builder: (context, state) {
          return const SplashView();
        }),
    GoRoute(
        path: kregisterpage,
        builder: (context, state) {
          return RegisterPage();
        }),
    GoRoute(
        path: kloginpage,
        builder: (context, state) {
          return LoginPage();
        }),
    GoRoute(
        path: khomeview,
        builder: (context, state) {
          return const HomeView();
        }),
    GoRoute(
        path: kbookdetaiels,
        builder: (context, state) {
          return BlocProvider(
              create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
              child: BookDetaielsView(
                bookModel: state.extra as BookModel,
              ));
        }),
    GoRoute(
        path: ksearchview,
        builder: (context, state) {
          return const SearchView();
        }),
  ]);
}
