import 'package:bookly/home_section/Data/models/book_models/book_models.dart';
import 'package:bookly/home_section/widgets/custom_book_image.dart';
import 'package:bookly/manager/cubit/app_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bookly/styles.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class GridViewItem extends StatefulWidget {
  const GridViewItem({
    super.key,
    required this.bookModels,
  });

  final BookModels bookModels;

  @override
  State<GridViewItem> createState() => _GridViewItemState();
}

class _GridViewItemState extends State<GridViewItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push("/BookDetailsView", extra: widget.bookModels);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color(0xff100b20),
          ),
          child: Column(
            children: [
              CustomBookImage(
                imageUrl:
                    widget.bookModels.volumeInfo.imageLinks?.thumbnail ?? '',
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.bookModels.volumeInfo.title!,
                      maxLines: 2,
                      style: Styles.textStyle14.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
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
                        BlocBuilder<AppCubit, AppState>(
                          builder: (context, state) {
                            return IconButton(
                              onPressed: () {
                                context
                                    .read<AppCubit>()
                                    .addFavoriteBook(widget.bookModels);
                                setState(() {});
                              },
                              icon: context
                                      .read<AppCubit>()
                                      .favoriteBooks
                                      .contains(widget.bookModels)
                                  ? const Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                      size: 22,
                                    )
                                  : const Icon(
                                      Icons.favorite_border,
                                      size: 22,
                                    ),
                            );
                          },
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
