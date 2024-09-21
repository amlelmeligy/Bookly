import 'package:bookly/presentation/widget/present_screen_body.dart';
import 'package:flutter/cupertino.dart';

AnimatedContainer customIndicator({required int index}) {
  return AnimatedContainer(
    duration: const Duration(
      milliseconds: 200,
    ),
    margin: const EdgeInsets.only(right: 8),
    height: 8,
    width: currentPage == index ? 25 : 8,
    decoration: BoxDecoration(
      color: currentPage == index
          ? const Color.fromARGB(144, 61, 68, 80)
          : const Color.fromARGB(255, 255, 255, 255),
      borderRadius: BorderRadius.circular(8),
    ),
  );
}
