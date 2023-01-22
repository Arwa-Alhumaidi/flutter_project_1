import 'package:flutter/material.dart';

class Paybal extends StatelessWidget {
  const Paybal({Key? key}) : super(key: key);
  static String routeName = 'Paying';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                child: ListTile(
                  leading: SizedBox(
                    height: 120,
                    width: 80,
                    child: Image.asset('assets/logo.png'),
                  ),
                  trailing: const Icon(Icons.work_outline_outlined),
                  iconColor: Colors.black,
                ),
              ),
              const Card(
                child: ListTile(
                    leading: Text(
                      "Summary ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                      ),
                    ),
                    trailing: Text(
                      "SAR 988 (2 items)",
                      style: TextStyle(fontSize: 22),
                    )),
              ),
              Container(
                margin: const EdgeInsets.only(left: 17, top: 33, right: 10, bottom: 10),
                child: Column(
                  children: const [
                    Text(
                      "Have a promo code?",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 17, top: 13, right: 10, bottom: 10),
                child: const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "promo",
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 17, top: 33, right: 10, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "How would you like to pay?",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 13),
                      child: const TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.payment,
                              color: Colors.black,
                            ),
                            hintText: "Credit or Debit Card",
                            contentPadding: EdgeInsets.all(32),
                            hintStyle: TextStyle(fontSize: 20),
                            border: OutlineInputBorder()),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 13, bottom: 10),
                      child: const TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.paypal,
                              color: Colors.blue,
                            ),
                            hintText: "Paypal",
                            contentPadding: EdgeInsets.all(32),
                            hintStyle: TextStyle(fontSize: 20),
                            border: OutlineInputBorder()),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: RichText(
                          text: const TextSpan(children: [
                        TextSpan(
                            text: 'By Clicking place Order,You agree to the eShopWord',
                            style: TextStyle(
                              color: Color.fromARGB(255, 107, 106, 106),
                            )),
                        TextSpan(
                            text: ' Terms and Conditions.',
                            style: TextStyle(
                                color: Color.fromARGB(255, 107, 106, 106), decoration: TextDecoration.underline))
                      ])),
                    )
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 65,
                margin: const EdgeInsets.only(top: 55, left: 20, right: 20),
                child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor: const MaterialStatePropertyAll(Colors.black),
                        shape:
                            MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(44)))),
                    child: const Text(
                      "Proceed with PayPal",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
