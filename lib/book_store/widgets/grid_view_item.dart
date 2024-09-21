import 'package:bookly/home_section/Data/models/book_models/book_models.dart';
import 'package:bookly/home_section/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:bookly/styles.dart';
import 'package:go_router/go_router.dart';

class GridViewItem extends StatelessWidget {
  const GridViewItem({
    super.key,
    required this.bookModels,
  });

  final BookModels bookModels;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Color(0xff100b20),
          ),
          child: Column(
            children: [
              // ClipRRect(
              //   borderRadius: BorderRadius.only(
              //     topLeft: Radius.circular(12),
              //     topRight: Radius.circular(12),
              //   ),
              //   child: Image.asset(
              //     bookModels.volumeInfo.imageLinks.thumbnail,
              //     fit: BoxFit.cover,
              //     height: MediaQuery.of(context).size.height * 0.2,
              //     width: double.infinity,
              //   ),
              // ),
              CustomBookImage(
                imageUrl: bookModels.volumeInfo.imageLinks?.thumbnail ?? '',
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      bookModels.volumeInfo.title!,
                      maxLines: 2,
                      style: styles.textStyle14.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Free",
                      style: styles.textStyle18.copyWith(
                        color: Color(0xff9b9b9b),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            GoRouter.of(context)
                                .push("/BookDetailsView", extra: bookModels);
                          },
                          icon: Icon(
                            Icons.favorite_border,
                            size: 22,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
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
