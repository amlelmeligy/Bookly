import 'package:bookly/favorite/widgets/favorite_view_body.dart';
import 'package:flutter/material.dart';

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
    return const Scaffold(
      body: FavoriteViewBody(
          // bookModels: widget.bookModels,
          ),
    );
  }
}
