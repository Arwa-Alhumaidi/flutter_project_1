import 'package:flutter/material.dart';

import '../styling/build_card.dart';
import '../styling/build_row.dart';
import 'product.dart';

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);
  static String routeName = "PageOne";

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "Bag",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    ShopScreen.routeName,
                  );
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    BuildCard(
                        image: "assets/p2.png",
                        titel: "Nike React Pegasus Trail 4",
                        text1: "Women's Trail  ",
                        text2: "Running Shoes",
                        color: " Hyper Prink/Black ",
                        size: "Size 39 "),
                    BuildRow(text1: "SAR 419.00", text2: "SAR 679.00"),
                    const Divider(
                      color: Colors.black,
                    ),
                    BuildCard(
                        image: "assets/p1.png",
                        titel: "Nike ZoomX Invincible Run Flyknit 2 ",
                        text1: "Women's Road  ",
                        text2: "Running Shoes",
                        color: "Black/Summit White/Su... ",
                        size: "Size 39 "),
                    BuildRow(text1: "SAR 929.00", text2: "SAR 569.00"),
                    const Divider(
                      color: Colors.black,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          buildRowSubtotalandShipping("Subtotal", "SAR 988.00"),
                          buildRowSubtotalandShipping("Shipping", "Standard-Free"),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Total",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "SAR 988.00",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      color: Colors.black,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                                padding: const MaterialStatePropertyAll(EdgeInsets.all(20)),
                                backgroundColor: const MaterialStatePropertyAll(Colors.black)),
                            child: const Text(
                              "Checkout",
                              style: TextStyle(fontSize: 30, color: Colors.white),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row buildRowSubtotalandShipping(String sub, String shipp) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          sub,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.grey,
          ),
        ),
        Text(
          shipp,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
