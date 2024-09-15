import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  final bool isAcive;
  const Indicator({
    super.key,
    required this.isAcive,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 350),
      margin: EdgeInsets.symmetric(horizontal: 4),
      width: isAcive ? 22 : 8,
      height: 8,
      decoration: BoxDecoration(
        color: isAcive ? Color.fromARGB(171, 83, 98, 125) : Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
