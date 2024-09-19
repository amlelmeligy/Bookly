import 'package:bookly/book_store/widgets/grid_view_item.dart';
import 'package:bookly/errors/custom_error_widget.dart';
import 'package:bookly/home_section/manager/newset_books_cubit/newset_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomGradeView extends StatelessWidget {
  const CustomGradeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
      builder: (context, state) {
        if (state is NewsetBooksSuccess) {
          return GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, // fixed cross axis count
                mainAxisExtent: 320,
                crossAxisSpacing: 10),
            itemCount: state.books.length,
            itemBuilder: (context, i) {
              return GridViewItem(
                bookModels: state.books[i],
              );
            },
          );
        } else if (state is NewsetBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return Center(
            // return statement was missing
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}






















// class CustomGradeView extends StatelessWidget {
//   const CustomGradeView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
//       builder: (context, state) {
//         if (state is NewsetBooksSuccess) {
//           return GridView.builder(
//             physics: NeverScrollableScrollPhysics(),
//             shrinkWrap: true,
//             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 3,
//               mainAxisExtent: 310,
//             ),
//             itemCount: state.books.length,
//             itemBuilder: (context, index) {
//               return GridViewItem(
//                 bookModels: state.books[index],
//               );
//             },
//           );
//         } else if (state is NewsetBooksFailure) {
//           return CustomErrorWidget(errMessage: state.errMessage);
//         } else {
//           Center(
//             child: CircularProgressIndicator(),
//           );
//         }
//       },
//     );
//   }
// }
