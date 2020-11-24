import 'package:flutter/material.dart';

class SeventhTable extends StatefulWidget {
  @override
  _SeventhTableState createState() => _SeventhTableState();
}

class _SeventhTableState extends State<SeventhTable> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
          child: Row(
            children: [
              Text(
                "BTTS & Total Goals",
                style: TextStyle(color: Colors.orange),
              ),
              SizedBox(
                width: 65,
              ),
              Text(
                "0-1",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                width: 60,
              ),
              Text(
                "1-1",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                width: 60,
              ),
              Text(
                "2-1",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.45,
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
