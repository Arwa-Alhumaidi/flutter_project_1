import 'package:flutter/material.dart';

// extension navi on BuildContext {
//   Home get context => const Home();

//   void movePage(Widget home) {
//            Navigator.push(context,
//              MaterialPageRoute(builder: (context) => Home())),
//           };

// }

class ChangeE extends StatefulWidget {
  const ChangeE({super.key});
  static String routeName = "ChangeE";

  @override
  State<ChangeE> createState() => _ChangeE();
}

class _ChangeE extends State<ChangeE> {
  final TextEditingController doneE = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Edit Email Address',
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        leading: IconButton(icon: const Icon(Icons.arrow_back_ios), tooltip: 'Menu Icon', onPressed: () {}),
        elevation: .3,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text(
                  'Your current account email address is:',
                  style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 108, 107, 107)),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  'Email:${doneE.text}',
                  style: const TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 25, left: 25, top: 40),
            child: TextField(
              controller: doneE,
              onSubmitted: (value) {
                setState(() {
                  doneE.text = value;
                });
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'New Email Address',
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 25, left: 25, top: 15),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Confirm Email Address',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: SizedBox(
              width: 400,
              height: 65,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                  backgroundColor: const Color.fromARGB(255, 206, 206, 206),
                ),
                onPressed: () {},

                child: const Text(
                  'Done',
                  style: TextStyle(color: Color.fromARGB(255, 107, 107, 107), fontSize: 18.5),
                ),
                // width: 400,
                // height: 65,

                //borderRadius: const BorderRadius.all(Radius.circular(40))),

                //  alignment: Alignment.center,
                //   decoration: BoxDecoration(
                //       color: const Color.fromARGB(255, 231, 230, 230),
                //       border: Border.all(
                //         color: Colors.transparent,
                //       ),
              ),
            ),
          ),
          Row(
            children: const [],
          ),
        ],
      ),
    );
  }
}
