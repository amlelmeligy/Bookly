import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:bookly/styles.dart';

class CustomPresentButton extends StatefulWidget {
  const CustomPresentButton({
    super.key,
  });

  @override
  State<CustomPresentButton> createState() => _CustomPresentButtonState();
}

class _CustomPresentButtonState extends State<CustomPresentButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: const Color.fromARGB(206, 61, 68, 80),
        onPressed: () {
          GoRouter.of(context).push("/login");
        },
        child: Text(
          "Continue",
          style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
