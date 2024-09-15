import 'package:bookly/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

List item = [
  {
    "image": "assets/images/1 (1).jpg",
    "name": "El HIJ",
    "price": "10.00\$",
  },
  {
    "image": "assets/images/1 (2).jpg",
    "name": "STAND",
    "price": "8.00\$",
  },
  {
    "image": "assets/images/1 (3).jpg",
    "name": "COLD LAKE",
    "price": "6.00\$",
  },
  {
    "image": "assets/images/1 (4).jpg",
    "name": "STRANDED",
    "price": "4.00\$",
  },
  {
    "image": "assets/images/1 (5).jpg",
    "name": "BOOK NAME",
    "price": "10.00\$",
  },
  {
    "image": "assets/images/1 (6).jpg",
    "name": "VISIONS",
    "price": "8.00\$",
  },
  {
    "image": "assets/images/1 (7).jpg",
    "name": "SENSATION",
    "price": "10.00\$",
  },
  {
    "image": "assets/images/1 (8).jpg",
    "name": "SHELBY",
    "price": "8.00\$",
  },
  {
    "image": "assets/images/1 (9).jpg",
    "name": "ABOUT ME",
    "price": "6.00\$",
  },
  {
    "image": "assets/images/1 (10).jpg",
    "name": "VISIONS",
    "price": "4.00\$",
  },
  {
    "image": "assets/images/1 (1).jpg",
    "name": "ABOUT ME",
    "price": "10.00\$",
  },
  {
    "image": "assets/images/1 (2).jpg",
    "name": "SHELBY",
    "price": "8.00\$",
  },
];

class CustomGradeView extends StatefulWidget {
  const CustomGradeView({super.key});

  @override
  State<CustomGradeView> createState() => _CustomGradeViewState();
}

class _CustomGradeViewState extends State<CustomGradeView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisExtent: 310,
          // crossAxisSpacing: 12,
          // mainAxisSpacing: 12,
        ),
        itemCount: item.length,
        itemBuilder: (context, i) {
          return InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xff100b20),
                ),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                      ),
                      child: Image.asset(
                        "${item.elementAt(i)["image"]}",
                        fit: BoxFit.cover,
                        height: MediaQuery.of(context).size.height * 0.2,
                        width: double.infinity,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${item.elementAt(i)["name"]}",
                            style: styles.textStyle14.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "${item.elementAt(i)["price"]}",
                            style: styles.textStyle18.copyWith(
                              color: Color(0xff9b9b9b),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.favorite_border,
                                  size: 22,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.shopping_cart,
                                  size: 22,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
