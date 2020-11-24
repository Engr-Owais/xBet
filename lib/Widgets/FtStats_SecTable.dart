import 'package:flutter/material.dart';

class SecTable extends StatefulWidget {
  @override
  _SecTableState createState() => _SecTableState();
}

class _SecTableState extends State<SecTable> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
          child: Row(
            children: [
              Text(
                "FT Over/Under Goals",
                style: TextStyle(color: Colors.orange),
              ),
              SizedBox(
                width: 60,
              ),
              Text(
                "1.5",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                width: 60,
              ),
              Text(
                "2.5",
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
                "Over",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                width: 155,
              ),
              Container(
                width: 40,
                height: 30,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Text(
                    "95",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                width: 35,
              ),
              Container(
                width: 40,
                height: 30,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Text(
                    "85",
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
                "Under",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                width: 145,
              ),
              Container(
                width: 40,
                height: 30,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Text(
                    "10",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                width: 35,
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
        ),
      ],
    );
  }
}
