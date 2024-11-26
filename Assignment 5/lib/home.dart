import 'package:fb/item.dart';
import 'package:fb/profile.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  color: Colors.blue),
              height: 230,
              width: 500,
              child: const Column(
                children: [
                  Padding(
                      padding: EdgeInsets.all(15),
                      child: Row(children: [
                        CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/avatar.jpg"),
                            radius: 25),
                        Padding(
                          padding: EdgeInsets.only(left: 350),
                          child: Icon(
                            Icons.notification_add_sharp,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Icon(
                            Icons.shopping_cart_checkout_outlined,
                            color: Colors.white,
                          ),
                        )
                      ])),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Row(
                      children: [
                        Text(
                          "Hi Ukasha",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Row(
                      children: [
                        Text("well come to the medical store"),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: SizedBox(
                      width: 400,
                      child: SearchBar(
                        padding: WidgetStatePropertyAll<EdgeInsets>(
                            EdgeInsets.symmetric(horizontal: 10)),
                        leading: Icon(Icons.search),
                        hintText: "search your recovery product",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "top categories",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 1),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                      radius: 30,
                                      backgroundColor: Colors.amber),
                                  Text("dental"),
                                ],
                              ),
                            ),
                            Center(
                              child: Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                        radius: 30,
                                        backgroundColor: Colors.green),
                                    Text("welness")
                                  ],
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                      radius: 30,
                                      backgroundColor: Colors.orangeAccent),
                                  Text("homeo")
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                      radius: 30, backgroundColor: Colors.blue),
                                  Text("eye care")
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Image.asset("assets/images/md6.jpg"),
            const Padding(
              padding: EdgeInsets.all(8),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      "deal of the day",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 300),
                    child: Text(
                      "more",
                      style: TextStyle(color: Colors.blue),
                    ),
                  )
                ],
              ),
            ),
            GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 50,
                    crossAxisSpacing: 50),
                itemCount: 8,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ItemView()));
                    },
                    child: Container(
                      height: 140,
                      width: 100,
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Column(
                          children: [
                            Container(
                              height: 150,
                              child: GestureDetector(
                                child: Image.asset("assets/images/md5.jpg"),
                                onDoubleTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const ProfileView()));
                                },
                              ),
                            ),
                            const Row(
                              children: [
                                Text(
                                  "augmenten",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "capsole",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "110",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                      ),
                                    ),
                                    Text("3")
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}

EdgeInsets responsivePadding(BuildContext context) {
  double horizontalPadding =
      MediaQuery.of(context).size.width * 0.05; // 5% of screen width
  double verticalPadding =
      MediaQuery.of(context).size.height * 0.02; // 2% of screen height
  return EdgeInsets.symmetric(
      horizontal: horizontalPadding, vertical: verticalPadding);
}
