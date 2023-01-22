import 'package:flutter/material.dart';
import 'package:project_1/pages/change_email.dart';

class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);
  static String routName = 'Setting';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.7,
        backgroundColor: Colors.white,
        title: const Text(
          "settings",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              child: InkWell(
                onTap: (() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ChangeE()),
                  );
                }),
                child: Container(
                  child: const ListTile(
                    leading: Text(
                      "Email",
                      style: TextStyle(color: Colors.black, fontSize: 22),
                    ),
                    trailing: Text(
                      "fffS",
                      style: TextStyle(color: Colors.black, fontSize: 22),
                    ),
                  ),
                ),
              ),
            ),
            const Card(
              child: ListTile(
                leading: Text(
                  "Mobile Number",
                  style: TextStyle(color: Colors.black, fontSize: 22),
                ),
                trailing: Text(
                  "Add",
                  style: TextStyle(color: Colors.black, fontSize: 22),
                ),
              ),
            ),
            const Card(
              child: ListTile(
                leading: Text(
                  "Data Of Birth",
                  style: TextStyle(color: Colors.black, fontSize: 22),
                ),
                trailing: Text(
                  "01/01/1970",
                  style: TextStyle(color: Colors.black, fontSize: 22),
                ),
              ),
            ),
            const Card(
              child: ListTile(
                leading: Text(
                  "Units Of Measure",
                  style: TextStyle(color: Colors.black, fontSize: 22),
                ),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            const Card(
              child: ListTile(
                tileColor: Colors.black12,
              ),
            ),
            const Card(
              child: ListTile(
                  leading: Text(
                    "Shipping Information",
                    style: TextStyle(color: Colors.black, fontSize: 22),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios)),
            ),
            const Card(
              child: ListTile(
                  leading: Text(
                    "Payment Information",
                    style: TextStyle(color: Colors.black, fontSize: 22),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios)),
            ),
            const Card(
              child: ListTile(
                tileColor: Colors.black12,
              ),
            ),
            const Card(
              child: ListTile(
                  leading: Text(
                    "Copuntry/Region",
                    style: TextStyle(color: Colors.black, fontSize: 22),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios)),
            ),
            const Card(
              child: ListTile(
                  leading: Text(
                    "Language",
                    style: TextStyle(color: Colors.black, fontSize: 22),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios)),
            ),
            const Card(
              child: ListTile(
                  leading: Text(
                    "Shopping Settings",
                    style: TextStyle(color: Colors.black, fontSize: 22),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios)),
            ),
            const Card(
              child: ListTile(
                tileColor: Colors.black12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
