import 'package:bookly/presentation/widget/present_screen_body.dart';
import 'package:flutter/cupertino.dart';

AnimatedContainer CustomIndicator({required int index}) {
  return AnimatedContainer(
    duration: Duration(
      milliseconds: 200,
    ),
    margin: const EdgeInsets.only(right: 8),
    height: 8,
    width: currentPage == index ? 25 : 8,
    decoration: BoxDecoration(
      color: currentPage == index
          ? Color.fromARGB(144, 61, 68, 80)
          : const Color.fromARGB(255, 255, 255, 255),
      borderRadius: BorderRadius.circular(8),
    ),
  );
}
