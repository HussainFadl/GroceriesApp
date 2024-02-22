import 'package:flutter/material.dart';
import 'package:groceries/Features/Home/Views/home_screen.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

List screens = [
  const HomeScreen(),
  const HomeScreen(),
  const HomeScreen(),
  const HomeScreen(),
  const HomeScreen(),
];

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int changingIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: changingIndex,
          onTap: (value) {
            setState(() {
              changingIndex = value;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.storefront),
              label: 'shop',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline),
              label: 'Favourite',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box_rounded),
              label: 'Account',
            ),
          ]),

          body: screens[
            changingIndex
          ],
    );
  }
}
