import 'package:bookly/styles.dart';
import 'package:bookly/widgets/Custome_App_Bar.dart';
import 'package:bookly/widgets/best_seller_list_view_Item.dart';
import 'package:bookly/widgets/custom_list_view_item.dart';
import 'package:bookly/widgets/featured_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeatureBooksListView(),
          SizedBox(
            height: 42,
          ),
          Text(
            'Best Sallers',
            style: styles.textStyle18,
          ),
          SizedBox(
            height: 20,
          ),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}
