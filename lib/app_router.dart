import 'package:bookly/views/SplashView.dart';
import 'package:bookly/views/book_details_view.dart';
import 'package:bookly/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SplashView(),
      ),
      GoRoute(
        path: '/HomeView',
        builder: (context, state) => HomeView(),
      ),
      GoRoute(
        path: "/BookDetailsView",
        builder: (context, state) => BookDetailsView(),
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