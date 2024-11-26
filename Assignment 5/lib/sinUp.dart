//import 'package:fb/home.dart';
import 'package:fb/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();
  signUp() async {
    try {
      // ignore: unused_local_variable
      final crendial = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: emailcontroller.text, password: passcontroller.text);
    } on FirebaseAuthException catch (e) {
      if (e.code == "ukasha") {
        print("wrong email");
      } else if (e.code == "12344") {
        print("the account is already exist for this email");
      }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: SizedBox(
                height: 200,
                child: Image.asset("assets/images/md.jpg"),
              ),
            ),
            Text(
              "please enter email",
              style: TextStyle(color: Colors.grey),
            ),
            const Text(""),
            SizedBox(
              width: 300,
              child: TextField(
                controller: emailcontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  label: Text("email"),
                ),
              ),
            ),
            Text(''),
            Text(
              "please enter your password ",
              style: TextStyle(color: Colors.grey),
            ),
            Text(""),
            SizedBox(
              width: 300,
              child: TextField(
                controller: passcontroller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    labelText: "password"),
              ),
            ),
            Text(""),
            SizedBox(
              width: 300,
              child: ElevatedButton(
                  onPressed: () async {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginView()));
                    await signUp();
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  child: Text(
                    "REGISTER",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            Text(""),
          ],
        ),
      ),
    );
  }
}
