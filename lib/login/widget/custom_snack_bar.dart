import 'package:flutter/material.dart';

void ShowBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Container(
        decoration: BoxDecoration(
          border: Border.all(color: const Color.fromARGB(255, 255, 255, 255)),
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.all(20),
        child: Text(
          message,
          style: TextStyle(color: Colors.white),
        ),
      ),
    ),
  );
}
