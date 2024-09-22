import 'package:bookly/favorite/widgets/favorite_view_body.dart';
import 'package:flutter/material.dart';

class FavoriteView extends StatefulWidget {
  const FavoriteView({
    super.key,
  });

  @override
  State<FavoriteView> createState() => _FavoriteViewState();
}

class _FavoriteViewState extends State<FavoriteView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: FavoriteViewBody(),
    );
  }
}
