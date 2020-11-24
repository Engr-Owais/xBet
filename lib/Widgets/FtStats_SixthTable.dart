import 'package:flutter/material.dart';

class SixthTable extends StatefulWidget {
  @override
  _SixthTableState createState() => _SixthTableState();
}

class _SixthTableState extends State<SixthTable> {
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
                width: 45,
              ),
              Text(
                "Under 2.5",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                "Over 2.5",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            children: [
              Text(
                "BTTS Yes",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                width: 118,
              ),
              Container(
                width: 40,
                height: 30,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Text(
                    "10",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                width: 45,
              ),
              Container(
                width: 40,
                height: 30,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Text(
                    "15",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16.0),
          child: Row(
            children: [
              Text(
                "BTTS NO",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                width: 120,
              ),
              Container(
                width: 40,
                height: 30,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Text(
                    "10",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                width: 45,
              ),
              Container(
                width: 40,
                height: 30,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Text(
                    "15",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
