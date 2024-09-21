import 'package:bookly/presentation/widget/present_screen_body.dart';
import 'package:flutter/material.dart';

class OnePresentScreen extends StatelessWidget {
  const OnePresentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // SizeConfig().init(context);
    return const Scaffold(
      body: PresentScreenBody(),
    );
  }
}
