import 'package:flutter/material.dart';

class BannarWidget extends StatelessWidget {
  final AppBanner appBanner;

  const BannarWidget({
    Key? key,
    required this.appBanner,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: AssetImage(appBanner.thumbnaiUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: DefaultTextStyle(
        style: TextStyle(color: Colors.white, fontSize: 16),
        child: Stack(children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.4),
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          // Center(
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.spaceAround,
          //     children: [
          //       Container(
          //         width: double.infinity,
          //         child: Text(
          //           appBanner.title.toUpperCase(),
          //           style: TextStyle(
          //             fontSize: 28,
          //           ),
          //           textAlign: TextAlign.center,
          //         ),
          //       )
          //     ],
          //   ),
          // )
        ]),
      ),
    );
  }
}

class AppBanner {
  final int id;
  final String title;
  final String thumbnaiUrl;

  AppBanner(this.id, this.title, this.thumbnaiUrl);
}

List<AppBanner> appBannerList = [
  AppBanner(1, "", "assets/images/5.jpg"),
  AppBanner(2, "", "assets/images/7.jpg"),
  AppBanner(3, "", "assets/images/cover10.jpg"),
];
