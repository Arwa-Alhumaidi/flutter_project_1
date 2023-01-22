import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String routeName = 'HomePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Image(
                image: AssetImage('assets/logo.png'),
                height: 60,
                width: 150,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10, left: 40, right: 60),
              child: Text(
                'Enter your email to join us or sign in.',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
              ),
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 40),
                  child: Text(
                    'Saudi Arabia  ',
                    style: TextStyle(fontSize: 19),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    'Change',
                    style: TextStyle(
                        decoration: TextDecoration.underline, fontSize: 19, color: Color.fromARGB(255, 99, 99, 99)),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 20),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 50, left: 40, top: 30),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Email',
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 50, left: 40),
              child: Text(
                "By continuing, I agree to Nike's",
                style: TextStyle(fontSize: 18.5, color: Color.fromARGB(255, 99, 99, 99)),
              ),
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: Text(
                    'Privacy Policy ',
                    style: TextStyle(
                        decoration: TextDecoration.underline, fontSize: 18.5, color: Color.fromARGB(255, 99, 99, 99)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(),
                  child: Text(
                    'and ',
                    style: TextStyle(fontSize: 18.5, color: Color.fromARGB(255, 99, 99, 99)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(),
                  child: Text(
                    'Terms of Use.',
                    style: TextStyle(
                        decoration: TextDecoration.underline, fontSize: 18.5, color: Color.fromARGB(255, 99, 99, 99)),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 55, right: 30),
                  child: Container(
                      width: 130,
                      height: 55,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(
                            color: Colors.transparent,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(40))),
                      child: const Text(
                        'Continue',
                        style: TextStyle(color: Color.fromARGB(255, 216, 216, 216), fontSize: 18.5),
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
