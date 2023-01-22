import 'package:flutter/material.dart';
import 'package:project_1/pages/cart.dart';
import 'package:project_1/pages/change_email.dart';
import 'package:project_1/pages/paying.dart';
import 'package:project_1/pages/product.dart';
import 'package:project_1/pages/profile.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  static String routeName = "/";
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectIndex = 0;

  void _selectFun(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  List page = [
    Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          '                  All Shoes',
          textAlign: TextAlign.center,
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(13.5),
            child: Image.asset('assets/filter.png'),
          ),
          IconButton(
            icon: const Icon(Icons.search),
            iconSize: 30,
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          tooltip: 'Menu Icon',
          onPressed: () {},
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 25, left: 30, bottom: 20),
                child: Text(
                  'All',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 25, left: 45, bottom: 20),
                child: Text(
                  'Lifestyle',
                  style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 108, 107, 107)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 25, left: 45, bottom: 20),
                child: Text(
                  'Jordan',
                  style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 108, 107, 107)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 25, left: 45, bottom: 20),
                child: Text(
                  'Running',
                  style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 108, 107, 107)),
                ),
              ),
            ],
          ),
          Row(
            children: const [
              Expanded(
                child: Divider(
                  color: Colors.black,
                  height: 4,
                  thickness: 2,
                  endIndent: 355,
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, int index) {
                return Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          child: Image.asset('assets/p1.png'),
                        ),
                        const Padding(padding: EdgeInsets.only(right: 6)),
                        Flexible(
                          child: Image.asset('assets/p2.png'),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 12,
                            left: 12,
                          ),
                          child: SizedBox(
                            width: 200,
                            child: Text(
                              'Nike ZoomX Invincible Run Flyknit 2',
                              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 12,
                            left: 12,
                          ),
                          child: SizedBox(
                            width: 190,
                            child: Text(
                              'Nike React Pegasus Trail 4',
                              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 8,
                            left: 12,
                          ),
                          child: SizedBox(
                            width: 200,
                            child: Text(
                              "Women's Road Running Shoes",
                              style: TextStyle(fontSize: 15, color: Color.fromARGB(255, 108, 107, 107)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 8,
                            left: 12,
                          ),
                          child: SizedBox(
                            width: 190,
                            child: Text(
                              "Women's Road Running Shoes",
                              style: TextStyle(fontSize: 15, color: Color.fromARGB(255, 108, 107, 107)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 8,
                            left: 12,
                          ),
                          child: SizedBox(
                            width: 72,
                            child: Text(
                              'SAR 569',
                              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 8,
                          ),
                          child: SizedBox(
                              width: 70,
                              child: Text.rich(
                                TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'SAR 929',
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 108, 107, 107),
                                        decoration: TextDecoration.lineThrough,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 8,
                            left: 70,
                          ),
                          child: SizedBox(
                            width: 72,
                            child: Text(
                              'SAR 419',
                              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 8,
                          ),
                          child: SizedBox(
                              width: 70,
                              child: Text.rich(
                                TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'SAR 679',
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 108, 107, 107),
                                        decoration: TextDecoration.lineThrough,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15, left: 12, bottom: 37),
                          child: Container(
                            width: 13.0,
                            height: 13.0,
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15, left: 12, bottom: 37),
                          child: Container(
                            width: 13.0,
                            height: 13.0,
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),

      // body: Center(
      //   child: Text("Home"),
      // ),
    ),
    const ShopScreen(),
    const Paybal(),
    const ChangeE(),
    const Setting(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectIndex,
          //backgroundColor: ,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black26,
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          onTap: _selectFun,
          items: const [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home_outlined),
            ),
            BottomNavigationBarItem(
              label: "Shopping",
              icon: Icon(Icons.search_off_outlined),
            ),
            BottomNavigationBarItem(
              label: "Favorites",
              icon: Icon(Icons.favorite_border),
            ),
            BottomNavigationBarItem(
              label: "Bag",
              icon: Icon(Icons.wallet_travel_outlined),
            ),
            BottomNavigationBarItem(
              label: "Profile",
              icon: Icon(Icons.person_outline),
            ),
          ],
        ),
        body: page[_selectIndex],
      ),
    );
  }
}
