import 'package:fb/navigation.dart';
import 'package:fb/sinUp.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController numbercontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();
  login() async {
    try {
      // ignore: unused_local_variable
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: numbercontroller.text, password: passcontroller.text);
    } on FirebaseAuthException catch (e) {
      if (e.code == "usernotfound") {
        print("no user found for that Email");
      } else if (e.code == "wrong password") {
        print("wrong password provided for that user");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 25),
                child: SizedBox(
                  width: 300,
                  child: Image.asset("assets/images/md4.jpg"),
                ),
              ),
              const Text(
                "enter your email or number ",
                style: TextStyle(color: Colors.blueGrey),
              ),
              const Text(
                "",
                style: TextStyle(),
              ),
              SizedBox(
                width: 300,
                child: TextField(
                  controller: numbercontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(35),
                    ),
                    label: const Text("email/number"),
                  ),
                ),
              ),
              Text(""),
              SizedBox(
                width: 300,
                child: TextField(
                  controller: passcontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(35),
                    ),
                    label: const Text("password"),
                  ),
                ),
              ),
              const Text(""),
              SizedBox(
                width: 290,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NavigatorView(),
                        ),
                      );
                      login();
                    },
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    child: const Text(
                      "CONTINUE",
                      style: TextStyle(color: Colors.white),
                    )),
              ),
              Text(""),
              SizedBox(
                width: 300,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpView()));
                    },
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    child: Text(
                      "Don't Have an Account",
                      style: TextStyle(color: Colors.white),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
