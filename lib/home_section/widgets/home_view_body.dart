import 'package:bookly/styles.dart';
import 'package:bookly/home_section/widgets/custome_App_Bar.dart';
import 'package:bookly/home_section/widgets/best_seller_listview.dart';
import 'package:bookly/home_section/widgets/featured_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(physics: BouncingScrollPhysics(), slivers: [
      SliverToBoxAdapter(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: CustomAppBar(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: FeatureBooksListView(),
            ),
            SizedBox(
              height: 42,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'Newset Books',
                style: Styles.textStyle18,
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      SliverFillRemaining(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: BestSellerListView(),
        ),
      )
    ]);
  }
}
