//import 'dart:ffi';

import 'package:fb/login.dart';
import 'package:fb/navigation.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class OverView extends StatefulWidget {
  const OverView({super.key});

  @override
  State<OverView> createState() => _OverViewState();
}

class _OverViewState extends State<OverView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              child: content(),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginView()),
                    );
                  },
                  padding: EdgeInsets.only(
                    right: 10,
                    left: 10,
                  ),
                  hoverColor: Colors.blue,
                  icon: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        "Skip",
                        style: TextStyle(color: Colors.grey),
                        selectionColor: Colors.blue,
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 1),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NavigatorView(),
                        ),
                      );
                    },
                    hoverColor: Colors.blue,
                    icon: const Text(
                      "next",
                      style: TextStyle(color: Colors.grey),
                      selectionColor: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget content() {
  return CarouselSlider(
    items: [
      Container(
        width: 200,
        height: 100,
        // margin: const EdgeInsets.symmetric(horizontal: 50),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/md2.jpg"), fit: BoxFit.fill),
        ),
      ),
      Container(
        width: 300,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          image: DecorationImage(
              image: AssetImage("assets/images/md3.jpg"), fit: BoxFit.fill),
        ),
      ),
      Container(
        width: 300,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          image: DecorationImage(
              image: AssetImage("assets/images/md2.1.jpg"), fit: BoxFit.fill),
        ),
      ),
    ],
    options: CarouselOptions(
      height: 400, // Adjust height to fit your layout
      enlargeCenterPage: true, // Adds a zoom effect on the current slide
      enableInfiniteScroll: true,
      autoPlay: true,
    ),
  );
}
