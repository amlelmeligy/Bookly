import 'package:bookly/home_section/Data/models/book_models/book_models.dart';
import 'package:bookly/home_section/widgets/custon_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key, required this.bookModels});

  final BookModels bookModels;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          const Expanded(
            child: CustomButton(
              text: "Free",
              backgroundcColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              onpressed: () async {
                Uri uri = Uri.parse(bookModels.volumeInfo.previewLink!);
                if (!await launchUrl(uri)) {
                  throw 'Could not launch $uri';
                }
              },
              text: "Free Preview",
              backgroundcColor: Color(0xffEF8262),
              textColor: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
