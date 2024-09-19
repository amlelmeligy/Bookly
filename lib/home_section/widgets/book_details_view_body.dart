import 'package:bookly/styles.dart';
import 'package:bookly/home_section/widgets/book_action.dart';
import 'package:bookly/home_section/widgets/book_details_section.dart';
import 'package:bookly/home_section/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/home_section/widgets/similar_books_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            CustomBookDetailsAppBar(),
            BookDetailsSection(),
            SizedBox(
              height: 40,
            ),
            BookAction(),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "You can also like",
                  style: styles.textStyle14.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SimilarBooksListView(),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
