import 'package:fb/cart_view.dart';
import 'package:fb/home.dart';
import 'package:fb/item.dart';
import 'package:fb/profile.dart';
import 'package:flutter/material.dart';

class NavigatorView extends StatefulWidget {
  const NavigatorView({super.key});

  @override
  State<NavigatorView> createState() => _NavigatorViewState();
}

class _NavigatorViewState extends State<NavigatorView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getCurrentView(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled, color: Colors.grey), label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.notification_add_outlined,
                color: Colors.grey,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket_rounded, color: Colors.grey),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.manage_history_outlined, color: Colors.grey),
              label: ""),
        ],
      ),
    );
  }

  Widget getCurrentView() {
    if (currentIndex == 0) {
      return const HomeView();
    } else if (currentIndex == 1) {
      return const HomeView();
    } else if (currentIndex == 2) {
      return const ItemView();
    } else if (currentIndex == 3) {
      return const CartView();
    } else {
      return const ProfileView();
    }
  }
}
