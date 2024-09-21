import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomIconList extends StatelessWidget {
  const CustomIconList({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 50,
          width: 50,
          color: Colors.white,
          child: Icon(
            FontAwesomeIcons.facebook,
            color: Colors.blue,
            size: 40,
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Container(
          height: 50,
          width: 50,
          color: Colors.white,
          child: Icon(
            FontAwesomeIcons.twitter,
            color: Colors.blue,
            size: 40,
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Container(
          height: 50,
          width: 50,
          color: Colors.white,
          child: Icon(
            FontAwesomeIcons.instagram,
            color: Color.fromARGB(255, 215, 39, 119),
            size: 40,
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Container(
          height: 50,
          width: 50,
          color: Colors.white,
          child: Icon(
            FontAwesomeIcons.google,
            color: Color.fromARGB(255, 215, 39, 119),
            size: 40,
          ),
        ),
      ],
    );
  }
}
