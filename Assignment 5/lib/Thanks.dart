import 'package:flutter/material.dart';

class ThankView extends StatefulWidget {
  const ThankView({super.key});

  @override
  State<ThankView> createState() => _ThankViewState();
}

class _ThankViewState extends State<ThankView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Column(
        children: [
          Container(child: circleAatar()),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    "Thank You for shopping",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

circleAatar() {
  return ClipOval(
    child: Container(
      height: 200,
      width: 100,
      color: Colors.white,
      child: const Center(
        child: CircleAvatar(
          radius: 40,
          backgroundColor: Colors.blue,
          child: Text("denta"),
        ),
      ),
    ),
  );
}
