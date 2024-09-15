import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

class OnePresentScreen extends StatelessWidget {
  const OnePresentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff100b20),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              "Skip",
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 80,
            ),
            child: Lottie.asset(
              "assets/lottie/bookkk.json",
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(144, 61, 68, 80),
              borderRadius: BorderRadius.circular(16),
            ),
            child: MaterialButton(
              onPressed: () {
                GoRouter.of(context).push("/Navigation");
              },
              child: Text("Next"),
            ),
          )
        ],
      ),
    );
  }
}
