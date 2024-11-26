import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: const Text("my profile"),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 45,
                  backgroundColor: Colors.blueGrey,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/avatar2.jpg"),
                    radius: 40,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        "Hi ukasha",
                        style: TextStyle(fontSize: 30),
                      ),
                      Text("welcome to quick medical"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            child: ListTile(
              onTap: () {},
              leading: const Icon(Icons.note_add_outlined, color: Colors.black),
              title: Text("edit profile"),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
            ),
          ),
          Container(
            color: Colors.white,
            child: ListTile(
              onTap: () {},
              leading: Icon(Icons.contact_page),
              title: Text("My order"),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
            ),
          ),
          Container(
            color: Colors.white,
            child: ListTile(
              onTap: () {},
              leading: Icon(
                Icons.access_time_outlined,
                color: Colors.black,
              ),
              title: Text("Billing"),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
            ),
          ),
          Container(
            color: Colors.white,
            child: ListTile(
              onTap: () {},
              leading: Icon(Icons.question_mark_outlined, color: Colors.black),
              title: Text("faq"),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
            ),
          ),
        ],
      ),
    );
  }
}
