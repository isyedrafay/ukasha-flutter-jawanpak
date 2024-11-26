import 'package:fb/Thanks.dart';
import 'package:flutter/material.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  var count1 = 0;
  var count2 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 230, 132, 20),
          title: const Text(
            "SHOPs",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(8),
                child: Row(
                  children: [
                    Text(
                      "only one item left ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(left: 240),
                      child: Icon(Icons.add_box_outlined, color: Colors.blue),
                    ),
                    Text(
                      "Add more",
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                child: ListTile(
                  onTap: () {},
                  leading: Image.asset(
                    "assets/images/md11.jpg",
                    width: 40,
                    height: 150,
                  ),
                  title: const Text("pediasure"),
                  subtitle: Row(
                    children: [
                      const Column(
                        children: [
                          Text(
                            "physical growth",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            "45",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 23),
                          )
                        ],
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(left: 220),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: [
                              IconButton(
                                icon: const Icon(Icons.add),
                                onPressed: () {
                                  setState(() {
                                    count1 += 1;
                                  });
                                },
                              ),
                              Text(
                                count1.toString(),
                              ),
                              IconButton(
                                  icon: const Icon(Icons.remove),
                                  onPressed: () {
                                    setState(() {
                                      count1 -= 1;
                                    });
                                  })
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              //  SizedBox(),
              Container(
                color: Colors.white,
                child: ListTile(
                  onTap: () {},
                  leading: Image.asset(
                    "assets/images/md12.jpg",
                    height: 150,
                    width: 40,
                  ),
                  title: const Text("jumbo pack"),
                  subtitle: Row(
                    children: [
                      const Column(
                        children: [
                          Text(
                            "healthy",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            "18",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ],
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(left: 275),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: [
                              IconButton(
                                icon: const Icon(Icons.add),
                                onPressed: () {
                                  setState(() {
                                    count2 += 1;
                                  });
                                },
                              ),
                              Text(count2.toString()),
                              IconButton(
                                  icon: const Icon(Icons.remove),
                                  onPressed: () {
                                    setState(() {
                                      count2 -= 1;
                                    });
                                  })
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10, top: 50),
                child: Row(
                  children: [
                    Text(
                      "payment summary",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 10, top: 5),
                    child: Row(
                      children: [
                        Text(
                          "Total order",
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Text(
                            "399",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10, top: 5),
                    child: Row(
                      children: [
                        Text(
                          "Item discount",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.grey),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(
                            right: 20,
                          ),
                          child: Text(
                            "-29",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10, top: 5),
                    child: Row(
                      children: [
                        Text(
                          "coupon discount",
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Text(
                            "-20",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10, top: 5),
                    child: Row(
                      children: [
                        Text(
                          "shipping",
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Text(
                            "free",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      children: [
                        Text(
                          "total",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: Text(
                            "180",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    width: 300,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ThankView(),
                              ));
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue),
                        child: const Text(
                          "place order",
                          style: TextStyle(color: Colors.white),
                        )),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
