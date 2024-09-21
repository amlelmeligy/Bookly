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
        const Spacer(),
        Text(
          "Bookly",
          style: Styles.textStyle30.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          text,
          style: Styles.textStyle18.copyWith(
            color: Colors.grey,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Lottie.asset(image, height: 200, width: double.infinity)
      ],
    );
  }
}
