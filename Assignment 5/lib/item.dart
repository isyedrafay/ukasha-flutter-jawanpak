import 'package:carousel_slider/carousel_slider.dart';
import 'package:fb/cart_view.dart';
//import 'package:fb/over_view.dart';
import 'package:flutter/material.dart';

class ItemView extends StatefulWidget {
  const ItemView({super.key});

  @override
  State<ItemView> createState() => _ItemViewState();
}

class _ItemViewState extends State<ItemView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          const Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.notification_add_outlined),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.shopping_bag_outlined),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Align items to the start
            children: [
              Text(
                "Sugar free Gold low calories",
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                "Etiam mollis metus non purus",
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 16),
              // Content Widget Placeholder
              Container(child: content()),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "before: Rs99",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Now: Rs55",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("etiam mollis"),
                  Padding(
                    padding: EdgeInsets.only(left: 340),
                    child: Row(
                      children: [
                        Icon(Icons.add_box_outlined, color: Colors.blue),
                        Text("More", style: TextStyle(color: Colors.blue)),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  _priceCard("Rs.106", "500pellets", Colors.orange),
                  const SizedBox(width: 10),
                  _priceCard("Rs.166", "110pellets", Colors.grey),
                  const SizedBox(width: 10),
                  _priceCard("Rs.552", "300pellets", Colors.grey),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                "Product detail",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(height: 8),
              const Text(
                "Interdum et malesuada fames ac ante ipsum primis finibus. "
                "Etiam et nisi aliquet, accumsan nisi sit.",
              ),
              const SizedBox(height: 20),
              const Text(
                "Ingredients",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                "Interdum et malesuada fames ac ante ipsum primis in faucibus. "
                "Morbi ut nisi odio. Nulla facilisi.",
              ),
              const SizedBox(height: 20),
              Row(
                children: const [
                  Text(
                    "Expiry Date: ",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "15-02-2024",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: const [
                  Text(
                    "Brand Name: ",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "pakk",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                height: 400,
                width: double.infinity, // Adjust to fit screen width
                child: Image.asset("assets/images/md5.jpg", fit: BoxFit.cover),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: SizedBox(
                  width: 300,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CartView(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue),
                      child: const Text(
                        "Go to cart",
                        style: TextStyle(color: Colors.white),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget content() {
    return CarouselSlider(items: [
      Container(
        width: 200,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/md6.jpg"), fit: BoxFit.fill)),
      ),
      Container(
        width: 200,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/md11.jpg3"),
                fit: BoxFit.fill)),
      ),
      Container(
        width: 200,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/md12.jpg"), fit: BoxFit.fill)),
      )
    ], options: CarouselOptions(height: 150));
  }

  // Helper function to create price cards
  Widget _priceCard(String price, String description, Color textColor) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.yellow, width: 2),
        borderRadius: BorderRadius.circular(10),
      ),
      height: 70,
      width: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(price, style: TextStyle(color: textColor, fontSize: 20)),
          Text(description, style: TextStyle(color: textColor, fontSize: 15)),
        ],
      ),
    );
  }
}
