import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

Widget defaultTextField({
  required String labelText,
  required String hintText,
  required TextInputType type,
  String? Function(String?)? onchange,
  bool obscureText = false,
  bool isPassword = false,
  suffixpressed, //العين
  IconData? suffix,
}) =>
    TextFormField(
      obscureText: isPassword,
      onChanged: onchange,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter some text';
        } else {
          return null;
        }
      },
      keyboardType: type,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          icon: Icon(
            suffix,
            color: const Color.fromARGB(255, 116, 114, 114),
          ),
          onPressed: suffixpressed, //العين
        ),
        labelText: labelText,
        labelStyle: TextStyle(
          fontSize: 14,
          color: Colors.white,
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 14,
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(width: 1, color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(width: 2, color: Colors.white),
        ),
      ),
    );
