import 'package:bookly/navigaton_bar.dart';
import 'package:bookly/home_section/views/SplashView.dart';
import 'package:bookly/home_section/views/book_details_view.dart';
import 'package:bookly/home_section/views/home_view.dart';
import 'package:bookly/home_section/views/search_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'home_section/widgets/presentation/one_present_screen.dart';

abstract class AppRouter {
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SplashView(),
      ),
      GoRoute(
        path: '/OnePresentScreen',
        builder: (context, state) => OnePresentScreen(),
      ),
      GoRoute(
        path: '/Navigation',
        builder: (context, state) => Navigation(),
      ),
      GoRoute(
        path: '/HomeView',
        builder: (context, state) => HomeView(),
      ),
      GoRoute(
        path: "/BookDetailsView",
        builder: (context, state) => BookDetailsView(),
      ),
      GoRoute(
        path: '/SearchView',
        builder: (context, state) => SearchView(),
      )
    ],
  );
}


/////
///    GoRoute(
    //   path: '/',
    //   builder: (BuildContext context, GoRouterState state) {
    //     return const SplashView();
    //   },
    //   routes: <RouteBase>[
    //     GoRoute(
    //       path: 'details',
    //       builder: (BuildContext context, GoRouterState state) {
    //         return const SplashView();
    //       },
    //     ),
    //   ],
    // ),