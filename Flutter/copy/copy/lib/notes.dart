import 'package:copy/daily.dart';
//import 'package:doto/monthy.dart';
import 'package:copy/weekly.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 107, 121, 192),
          appBar: AppBar(
            title: const Text(
              'Dashboard',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            backgroundColor: const Color.fromARGB(255, 107, 121, 192),
            actions: const [
              CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(
                    'https://pngtree.com/freepng/users-vector_3725294.html'),
              ),
              CircleAvatar(
                backgroundColor: Color.fromARGB(255, 107, 121, 192),
              )
            ],
            bottom: const TabBar(
              tabs: [
                Tab(text: "Today's Task"),
                Tab(text: "Weekly Task"),
                Tab(text: "Monthly Task"),
              ],
            ),
          ),
          body: TabBarView(children: [
            DailyView(),
            const WeeklyView(),
            // const MonthlyView()
          ]),
        ));
  }
}
