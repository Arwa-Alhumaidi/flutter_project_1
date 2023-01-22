import 'package:flutter/material.dart';

class BuildCard extends StatelessWidget {
  final image;
  final titel;
  final text1;
  final text2;
  final color;
  final size;
  BuildCard(
      {required this.image,
      required this.titel,
      required this.text1,
      required this.text2,
      required this.color,
      required this.size});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              width: 130,
              child: Hero(
                tag: "id",
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
              padding: EdgeInsets.only(right: 10),
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              textDirection: TextDirection.ltr,
              children: [
                SizedBox(
                  height: 5,
                ),
                Text(
                  titel,
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  text1,
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  text2,
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  color,
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  size,
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
