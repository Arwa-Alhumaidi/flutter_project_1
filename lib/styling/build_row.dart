import 'package:flutter/material.dart';

class BuildRow extends StatefulWidget {
  final text1;
  final text2;
  BuildRow({required this.text1, required this.text2});

  @override
  State<BuildRow> createState() => _BuildRowState();
}

class _BuildRowState extends State<BuildRow> {
  List number = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'];

  String? _value = '1';

  String? _value2 = '1';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0, left: 8.0, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Qty ",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          DropdownButton(
              value: _value,
              items: number.map((e) {
                return DropdownMenuItem(
                  child: Text(
                    e,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  value: e,
                );
              }).toList(),
              onChanged: (val) {
                setState(() {
                  _value = val as String?;
                });
              }),
          SizedBox(
            width: 50,
          ),
          Text(
            widget.text1,
            style: TextStyle(fontSize: 20, color: Colors.grey, decoration: TextDecoration.lineThrough),
          ),
          Text(
            widget.text2,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
