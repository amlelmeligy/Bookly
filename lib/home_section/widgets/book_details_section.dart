import 'package:bookly/home_section/widgets/book_list_view_Item.dart';
import 'package:bookly/home_section/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:bookly/styles.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.17,
          ),
          child: CustomBookImage(
            imageUrl: "imageUrl",
          ),
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
          count: 250,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ],
    );
  }
}
