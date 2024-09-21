import 'package:bookly/book_store/widgets/text_form_field.dart';
import 'package:bookly/favorite/widgets/favorite_grad_view.dart';
import 'package:flutter/material.dart';
import 'package:bookly/styles.dart';

class FavoriteViewBody extends StatelessWidget {
  const FavoriteViewBody({
    super.key,
    // required this.bookModels,
  });

  // final BookModels bookModels;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: const [
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.only(left: 8, right: 8, top: 8),
            child: TextFormFieldWidget(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            child: Text(
              'Your Favorite Books',
              style: Styles.textStyle18,
            ),
          ),
          FavoriteGradView(
              // book: bookModels,
              ),
        ],
      ),
    );
  }
}
