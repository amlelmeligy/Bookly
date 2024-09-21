import 'package:bookly/book_store/views/book_store_view.dart';
import 'package:bookly/home_section/views/home_view.dart';
import 'package:bookly/favorite/view/favorite_view.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int index = 0;
  final screens = [
    const HomeView(),
    const BookStoreView(),
    const FavoriteView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: Container(
        color: const Color(0xff100b20),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: GNav(
              tabBackgroundColor: const Color.fromARGB(144, 61, 68, 80),
              padding: const EdgeInsets.all(12),
              gap: 8,
              selectedIndex: index,
              onTabChange: (index) => setState(() => this.index = index),
              tabs: const [
                GButton(icon: Icons.home, text: 'Home'),
                GButton(icon: Icons.shopping_cart, text: 'Bookstore'),
                GButton(icon: Icons.favorite, text: 'Favorite'),
              ]),
        ),
      ),
    );
  }
}
