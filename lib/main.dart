import 'package:flutter/material.dart';
import 'package:project_1/pages/cart.dart';
import 'package:project_1/pages/change_email.dart';
import 'package:project_1/pages/home.dart';
import 'package:project_1/pages/login.dart';
import 'package:project_1/pages/paying.dart';
import 'package:project_1/pages/product.dart';
import 'package:project_1/pages/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: Home(),
      routes: {
        '/': (_) => const Home(),
        PageOne.routeName: (_) => const PageOne(),
        ShopScreen.routeName: (_) => const ShopScreen(),
        Setting.routName: (_) => const Setting(),
        Paybal.routeName: (_) => const Paybal(),
        ChangeE.routeName: (_) => const ChangeE(),
        HomePage.routeName: (_) => const HomePage(),
      },
    );
  }
}
