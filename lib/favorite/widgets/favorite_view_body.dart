import 'package:bookly/favorite/widgets/favorite_grad_view.dart';
import 'package:flutter/material.dart';
import 'package:bookly/styles.dart';

class FavoriteViewBody extends StatelessWidget {
  const FavoriteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Text(
              'Your Favorite Books',
              style: styles.textStyle18,
            ),
          ),
          FavoriteGradView(),
        ],
      ),
    );
  }
}
