import 'package:bookly/home_section/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: CustomBookImage(
              imageUrl:
                  'https://i.pinimg.com/originals/fd/a1/46/fda146a6c2cb89df616d1d9bb9523380.jpg',
            ),
          );
        },
      ),
    );
  }
}
