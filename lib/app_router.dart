import 'package:bookly/home_section/Data/models/book_models/book_models.dart';
import 'package:bookly/home_section/Data/repos/home_repo_impl.dart';
import 'package:bookly/home_section/Data/service_locator.dart';
import 'package:bookly/home_section/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/login/views/login.dart';
import 'package:bookly/login/views/sign_up.dart';
import 'package:bookly/navigaton_bar.dart';
import 'package:bookly/home_section/views/SplashView.dart';
import 'package:bookly/home_section/views/book_details_view.dart';
import 'package:bookly/home_section/views/home_view.dart';
import 'package:bookly/home_section/views/search_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'presentation/view/one_present_screen.dart';

abstract class AppRouter {
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/login',
        builder: (context, state) => const Login(),
      ),
      GoRoute(
        path: '/signUp',
        builder: (context, state) => const SignUp(),
      ),
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: '/OnePresentScreen',
        builder: (context, state) => const OnePresentScreen(),
      ),
      GoRoute(
        path: '/Navigation',
        builder: (context, state) => const Navigation(),
      ),
      GoRoute(
        path: '/HomeView',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: "/BookDetailsView",
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
          child: BookDetailsView(
            bookModels: state.extra as BookModels,
          ),
        ),
      ),
      GoRoute(
        path: '/SearchView',
        builder: (context, state) => const SearchView(),
      )
    ],
  );
}
