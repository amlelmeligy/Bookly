import 'package:bookly/home_section/Data/models/book_models/book_models.dart';
import 'package:flutter/material.dart';
import 'package:bookly/styles.dart';

class FavoriteGradViewItem extends StatelessWidget {
  const FavoriteGradViewItem({
    super.key,
    required this.book,
  });

  final BookModels book;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color(0xff100b20),
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: SizedBox(
                  height: 240,
                  child: AspectRatio(
                    aspectRatio: 2.9 / 4,
                    child: Image.asset(
                      "assets/images/1 (8).jpg",
                      fit: BoxFit.fill,
                    ),

                    // child: CustomBookImage(
                    //   imageUrl: book.volumeInfo.imageLinks?.thumbnail ?? '',
                    // ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Book Title',
                      // book.volumeInfo.title!,
                      maxLines: 2,
                      style: Styles.textStyle20.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Free",
                      style: Styles.textStyle18.copyWith(
                        color: const Color(0xff9b9b9b),
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 22,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.shopping_cart,
                            size: 22,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
