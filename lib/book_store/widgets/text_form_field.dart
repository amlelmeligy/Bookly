import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TextFormFieldWidget extends StatefulWidget {
  const TextFormFieldWidget({
    super.key,
  });

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Color.fromARGB(144, 61, 68, 80),
          // fillColor: Color.fromARGB(255, 38, 29, 70),
          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          hintText: 'Search',
          hintStyle: TextStyle(
            color: Colors.white.withOpacity(0.5),
          ),
          suffixIcon: IconButton(
            icon: Icon(
              FontAwesomeIcons.magnifyingGlass,
              color: Colors.white.withOpacity(0.5),
              size: 20,
            ),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
