// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class DefaultTextField extends StatefulWidget {
  final String labelText;
  final String hintText;
  final TextInputType type;
  final TextEditingController? controller;
  final bool? isPassword;
  const DefaultTextField({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.type,
    this.isPassword,
    
    this.controller,
  });


  @override
  State<DefaultTextField> createState() => _DefaultTextFieldState();
}

class _DefaultTextFieldState extends State<DefaultTextField> {
  bool obscureText = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: widget.isPassword ?? false ? obscureText : false,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter some text';
        } else {
          return null;
        }
      },
      keyboardType: widget.type,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          icon: Icon(
            widget.isPassword ?? false
                ? obscureText
                    ? Icons.visibility_off
                    : Icons.visibility
                : null,
            color: const Color.fromARGB(255, 116, 114, 114),
          ),
          onPressed: () {
            setState(() {
              obscureText = !obscureText;
            });
          },
        ),
        labelText: widget.labelText,
        labelStyle: const TextStyle(
          fontSize: 14,
          color: Colors.white,
        ),
        hintText: widget.hintText,
        hintStyle: const TextStyle(
          fontSize: 14,
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(width: 1, color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(width: 2, color: Colors.white),
        ),
      ),
    );
  }
}
