import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:bookly/styles.dart';

class CustomDefaultButton extends StatelessWidget {
  const CustomDefaultButton(
      {super.key, required this.ontap, required this.name});

  final VoidCallback ontap;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        color: Color.fromARGB(206, 61, 68, 80),
        onPressed: ontap,
        child: Text(
          name,
          style: styles.textStyle18,
        ),
      ),
    );
  }
}
