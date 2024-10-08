import 'package:bookly/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backgroundcColor,
    required this.textColor,
    this.borderRadius,
    required this.text,
    this.onpressed,
  });

  final Color backgroundcColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final String text;
  final void Function()? onpressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: onpressed,
        style: TextButton.styleFrom(
          backgroundColor: backgroundcColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(12),
          ),
        ),
        child: Text(
          text,
          style: Styles.textStyle18.copyWith(
              color: textColor, fontWeight: FontWeight.w900, fontSize: 16),
        ),
      ),
    );
  }
}
