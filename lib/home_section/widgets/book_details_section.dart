import 'package:bookly/home_section/Data/models/book_models/book_models.dart';
import 'package:bookly/home_section/widgets/book_list_view_Item.dart';
import 'package:bookly/home_section/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:bookly/styles.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({
    super.key,
    required this.book,
  });
  final BookModels book;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.19,
          ),
          child: CustomBookImage(
            imageUrl: book.volumeInfo.imageLinks?.thumbnail ?? '',
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          book.volumeInfo.title!,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: Styles.textStyle30,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          book.volumeInfo.authors![0],
          style: Styles.textStyle18.copyWith(
            color: Colors.grey,
            fontStyle: FontStyle.italic,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 10,
        ),
        BookRating(
          count: book.volumeInfo.pageCount!,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ],
    );
  }
}
