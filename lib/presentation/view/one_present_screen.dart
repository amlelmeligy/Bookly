import 'package:bookly/presentation/widget/present_screen_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class OnePresentScreen extends StatefulWidget {
  const OnePresentScreen({super.key});

  @override
  State<OnePresentScreen> createState() => _OnePresentScreenState();
}

var _selectedIndex = 0;

class _OnePresentScreenState extends State<OnePresentScreen> {
  @override
  Widget build(BuildContext context) {
    // SizeConfig().init(context);
    return Scaffold(
      body: PresentScreenBody(),
    );
  }
}