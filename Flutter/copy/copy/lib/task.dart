import 'package:copy/notes.dart';
import 'package:flutter/material.dart';

class TaskView extends StatefulWidget {
  const TaskView({super.key});

  @override
  State<TaskView> createState() => _TaskViewState();
}

class _TaskViewState extends State<TaskView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 107, 121, 192),
        appBar: AppBar(
          title: const Text(
            'Welcome To notes',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(30.0),
            child: Text(
              'keep going onnnnnnnn',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              textAlign: TextAlign.left,
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 107, 121, 192),
          actions: const [
            CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                  'https://pngtree.com/freepng/vector-avatar-icon_4013749.html'),
            ),
            CircleAvatar(
              backgroundColor: Color.fromARGB(255, 107, 121, 192),
            )
          ],
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  const Text("Priorty Notes",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  Container(
                    child: Row(
                      children: [
                        box("daily", "gymmmmmm", "indore workout"),
                        box("weekly", "flutter", "assignments"),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        box("", "Dart Assigment",
                            "Take help from notes and google"),
                        box("9PM yesterday", "English Assigment",
                            "Take help from notes and google"),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        box("monthly", "shopping", "karachi stores"),
                        box("anually", "programming language",
                            "online/on site"),
                      ],
                    ),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow,
                        foregroundColor: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DashboardView()),
                        );
                      },
                      child: const Text(
                        'Notes Dashboard',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            ),
          ),
        ));
  }
}

Widget box(String t1, String t2, String t3) {
  return Padding(
    padding: const EdgeInsets.all(25.0),
    child: Container(
      height: 200,
      width: 200,
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 166, 166, 166),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Text(
              t1,
              style: const TextStyle(
                  fontWeight: FontWeight.normal, color: Colors.white),
            ),
            Text(
              t2,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 25),
            ),
            Text(
              t3,
              style: const TextStyle(
                  fontWeight: FontWeight.normal, color: Colors.white),
            )
          ],
        ),
      ),
    ),
  );
}
