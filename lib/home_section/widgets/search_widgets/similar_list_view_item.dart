import 'package:bookly/home_section/Data/models/book_models/book_models.dart';
import 'package:bookly/home_section/widgets/search_widgets/simirar_custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:bookly/styles.dart';
import 'package:go_router/go_router.dart';

class SimilarBookListViewItem extends StatelessWidget {
  const SimilarBookListViewItem({super.key, required this.bookModels});

  final BookModels bookModels;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push("/BookDetailsView", extra: bookModels);
      },
      child: SizedBox(
        height: 70,
        child: Row(
          children: [
            SimilarCustomBookImage(
              imageUrl: bookModels.volumeInfo.imageLinks?.thumbnail ?? '',
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      bookModels.volumeInfo.title!,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle16.copyWith(
                        fontFamily: 'GT Sectra',
                      ),
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    bookModels.volumeInfo.authors![0],
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      Text(
                        "Free",
                        style: Styles.textStyle14.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
