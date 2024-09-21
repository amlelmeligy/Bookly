import 'package:bookly/book_store/widgets/grid_view_item.dart';
import 'package:bookly/errors/custom_error_widget.dart';
import 'package:bookly/home_section/Data/models/book_models/book_models.dart';
import 'package:bookly/home_section/manager/newset_books_cubit/newset_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'favorite_grad_view_item.dart';

class FavoriteGradView extends StatelessWidget {
  const FavoriteGradView({
    super.key,
    // required this.book,
  });

  // final BookModels book;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // fixed cross axis count
          mainAxisExtent: 370,
          crossAxisSpacing: 10),
      itemCount: 10,
      itemBuilder: (context, i) {
        return FavoriteGradViewItem(
            // book: book,
            );
      },
    );
  }
}
