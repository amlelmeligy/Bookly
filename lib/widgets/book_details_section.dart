import 'package:bookly/widgets/best_seller_list_view_Item.dart';
import 'package:bookly/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:bookly/styles.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.17),
          child: CustomBookImage(),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          "The Jungle Book",
          style: styles.textStyle30,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "Rudyard Kipling",
          style: styles.textStyle18.copyWith(
            color: Colors.grey,
            fontStyle: FontStyle.italic,
          ),
        ),
        SizedBox(
          height: 12,
        ),
        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ],
    );
  }
}
