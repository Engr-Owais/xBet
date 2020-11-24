import 'package:flutter/material.dart';

class ThirdTable extends StatefulWidget {
  @override
  _ThirdTableState createState() => _ThirdTableState();
}

class _ThirdTableState extends State<ThirdTable> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
          child: Row(
            children: [
              Text(
                "BTTS",
                style: TextStyle(color: Colors.orange),
              ),
              SizedBox(
                width: 155,
              ),
              Text(
                "Yes",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                width: 60,
              ),
              Text(
                "No",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.46,
            ),
            Container(
              width: 40,
              height: 30,
              decoration: BoxDecoration(
                  color: Colors.amberAccent,
                  borderRadius: BorderRadius.circular(30)),
              child: Center(
                child: Text(
                  "15",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              width: 40,
            ),
            Container(
              width: 40,
              height: 30,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(30)),
              child: Center(
                child: Text(
                  "15",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
