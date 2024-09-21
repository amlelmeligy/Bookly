import 'package:bookly/favorite/widgets/favorite_view_body.dart';
import 'package:bookly/home_section/Data/models/book_models/book_models.dart';
import 'package:bookly/home_section/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/home_section/views/book_details_view.dart';
import 'package:bookly/home_section/views/book_details_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoriteView extends StatefulWidget {
  const FavoriteView({
    super.key,
    // required this.bookModels,
  });

  // final BookModels bookModels;

  @override
  State<FavoriteView> createState() => _FavoriteViewState();
}

class _FavoriteViewState extends State<FavoriteView> {
  // @override
  // void initState() {
  //   super.initState();
  //   BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(
  //       category: widget.bookModels.volumeInfo.categories![0]);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FavoriteViewBody(
          // bookModels: widget.bookModels,
          ),
    );
  }
}
