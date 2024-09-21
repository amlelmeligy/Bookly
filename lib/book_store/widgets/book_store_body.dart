import 'package:bookly/book_store/widgets/custom_banner_widget.dart';
import 'package:bookly/book_store/widgets/custom_grade_widget.dart';
import 'package:bookly/book_store/widgets/indicator.dart';
import 'package:bookly/book_store/widgets/text_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
            const SizedBox(
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8, right: 8, top: 8),
              child: TextFormFieldWidget(),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16),
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
            const SizedBox(
              height: 5,
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
            const CustomGradeView()
          ],
        ),
      ),
    );
  }
}
