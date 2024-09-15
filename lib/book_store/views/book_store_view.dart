import 'package:bookly/book_store/widgets/book_store_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookStoreView extends StatelessWidget {
  const BookStoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BookStoreBody(),
    );
  }
}
