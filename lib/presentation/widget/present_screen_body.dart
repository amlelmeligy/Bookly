import 'package:bookly/presentation/widget/custom_indicator.dart';
import 'package:bookly/presentation/widget/present_screen_body_content.dart';
import 'package:bookly/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

class PresentScreenBody extends StatefulWidget {
  const PresentScreenBody({super.key});

  @override
  State<PresentScreenBody> createState() => _PresentScreenBodyState();
}

int currentPage = 0;
List<Map<String, String>> Data = [
  {
    "text": "Welcome to Bookly , Let's shop!",
    "image": "assets/lottie/1.json",
  },
  {
    "text": "We help people conect with store \n around World",
    "image": "assets/lottie/3.json",
  },
  {
    "text": "We show the easy way to shop. \n Just stay at home with us",
    "image": "assets/lottie/2.json",
  }
];

class _PresentScreenBodyState extends State<PresentScreenBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
                flex: 3,
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(
                      () {
                        currentPage = value;
                      },
                    );
                  },
                  itemCount: Data.length,
                  itemBuilder: (context, index) => PresentScreenBodyContent(
                    text: "${Data[index]["text"]}",
                    image: "${Data[index]["image"]}",
                  ),
                )),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        Data.length,
                        (index) => CustomIndicator(
                          index: index,
                        ),
                      ),
                    ),
                    Spacer(),
                    PresentButton(),
                    Spacer()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PresentButton extends StatefulWidget {
  const PresentButton({
    super.key,
  });

  @override
  State<PresentButton> createState() => _PresentButtonState();
}

class _PresentButtonState extends State<PresentButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: Color.fromARGB(206, 61, 68, 80),
        onPressed: () {
          GoRouter.of(context).push("/Navigation");
        },
        child: Text(
          "Continue",
          style: styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
