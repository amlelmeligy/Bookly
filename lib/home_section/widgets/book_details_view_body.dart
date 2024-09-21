import 'package:bookly/home_section/Data/models/book_models/book_models.dart';
import 'package:bookly/styles.dart';
import 'package:bookly/home_section/widgets/book_action.dart';
import 'package:bookly/home_section/widgets/book_details_section.dart';
import 'package:bookly/home_section/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/home_section/widgets/similar_books_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModels});

  final BookModels bookModels;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const CustomBookDetailsAppBar(),
            BookDetailsSection(
              book: bookModels,
            ),
            const SizedBox(
              height: 20,
            ),
            const BookAction(),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "You can also like",
                  style: Styles.textStyle14.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SimilarBooksListView(),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
