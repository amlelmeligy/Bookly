import 'package:flutter/material.dart';
import 'package:bookly/styles.dart';
import 'package:lottie/lottie.dart';

class PresentScreenBodyContent extends StatelessWidget {
  const PresentScreenBodyContent({
    super.key,
    required this.text,
    required this.image,
  });

  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          "Bookly",
          style: styles.textStyle30.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          text,
          style: styles.textStyle18.copyWith(
            color: Colors.grey,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Lottie.asset(image, height: 200, width: double.infinity)
      ],
    );
  }
}
