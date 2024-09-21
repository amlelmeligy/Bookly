
import 'package:bookly/styles.dart';
import 'package:bookly/home_section/widgets/search_widgets/custom_search_text_field.dart';
import 'package:bookly/home_section/widgets/search_widgets/search_result_listview.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: () {
                      GoRouter.of(context).pop();
                    },
                    icon: const Icon(Icons.arrow_back),
                  ),
                ),
                const CustomSearchTextField(),
                const SizedBox(height: 25),
                const Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Search Result",
                      style: Styles.textStyle18,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
          const SliverToBoxAdapter(
            child: Expanded(
              child: SearchResultListView(),
            ),
          )
        ],
      ),
    );
  }
}
