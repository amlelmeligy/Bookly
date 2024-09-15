// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bookly/book_store/widgets/custom_banner_widget.dart';
import 'package:bookly/book_store/widgets/custom_grade_widget.dart';
import 'package:bookly/book_store/widgets/indicator.dart';
import 'package:bookly/book_store/widgets/text_form_field.dart';
import 'package:bookly/home_section/widgets/book_list_view_Item.dart';
import 'package:bookly/home_section/widgets/custom_book_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:bookly/styles.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookStoreBody extends StatefulWidget {
  const BookStoreBody({super.key});

  @override
  State<BookStoreBody> createState() => _BookStoreBodyState();
}

class _BookStoreBodyState extends State<BookStoreBody> {
  var _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
              child: TextFormFieldWidget(),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 16),
              height: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: PageView.builder(
                onPageChanged: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                controller: PageController(viewportFraction: 1.08),
                itemCount: appBannerList.length,
                itemBuilder: (context, index) {
                  return BannarWidget(
                    appBanner: appBannerList[index],
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                  appBannerList.length,
                  (index) => Indicator(
                    isAcive: _selectedIndex == index ? true : false,
                  ),
                ),
              ],
            ),

            // GridviewWidget()
            CustomGradeView()
          ],
        ),
      ),
    );
  }
}
