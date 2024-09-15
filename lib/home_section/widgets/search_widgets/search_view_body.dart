import 'package:bookly/styles.dart';
import 'package:bookly/home_section/widgets/book_list_view_Item.dart';
import 'package:bookly/home_section/widgets/search_widgets/custom_search_text_field.dart';
import 'package:bookly/home_section/widgets/search_widgets/search_result_listview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(
                  height: 35,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: () {
                      GoRouter.of(context).pop();
                    },
                    icon: Icon(Icons.arrow_back),
                  ),
                ),
                CustomSearchTextField(),
                const SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Search Result",
                      style: styles.textStyle18,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // Expanded(
                //   child: SearchResultListView(),
                // )
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Expanded(
              child: SearchResultListView(),
            ),
          )
        ],
      ),
    );
    // return Padding(
    //   padding: const EdgeInsets.symmetric(
    //     horizontal: 25,
    //   ),
    //   child: Column(
    //     children: [
    //       SizedBox(
    //         height: 35,
    //       ),
    //       Align(
    //         alignment: Alignment.topLeft,
    //         child: IconButton(
    //           onPressed: () {
    //             GoRouter.of(context).pop();
    //           },
    //           icon: Icon(Icons.arrow_back),
    //         ),
    //       ),
    //       CustomSearchTextField(),
    //       const SizedBox(height: 20),
    //       Padding(
    //         padding: const EdgeInsets.only(left: 8),
    //         child: Align(
    //           alignment: Alignment.topLeft,
    //           child: Text(
    //             "Search Result",
    //             style: styles.textStyle18,
    //           ),
    //         ),
    //       ),
    //       const SizedBox(height: 20),
    //       Expanded(
    //         child: SearchResultListView(),
    //       )
    //     ],
    //   ),
    // );
  }
}
