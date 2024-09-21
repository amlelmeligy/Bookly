import 'package:flutter/material.dart';

import 'package:bookly/styles.dart';

class CustomDefaultButton extends StatelessWidget {
  const CustomDefaultButton(
      {super.key, required this.ontap, required this.name});

  final VoidCallback ontap;
  final String name;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        color: const Color.fromARGB(206, 61, 68, 80),
        onPressed: ontap,
        child: Text(
          name,
          style: Styles.textStyle18,
        ),
      ),
    );
  }
}
