import 'package:bookly/errors/custom_error_widget.dart';
import 'package:bookly/manager/cubit/app_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'favorite_grad_view_item.dart';

class FavoriteGradView extends StatelessWidget {
  const FavoriteGradView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return GridView.builder(
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 380,
            crossAxisSpacing: 10,
          ),
          itemCount: context.read<AppCubit>().favoriteBooks.length,
          itemBuilder: (context, i) {
            return context.read<AppCubit>().favoriteBooks.isEmpty
                ? const CustomErrorWidget(errMessage: 'No favorite books yet')
                : FavoriteGradViewItem(
                    book: context.read<AppCubit>().favoriteBooks[i],
                  );
          },
        );
      },
    );
  }
}
