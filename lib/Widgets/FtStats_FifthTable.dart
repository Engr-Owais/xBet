import 'package:flutter/material.dart';

class FifthTable extends StatefulWidget {
  @override
  _FifthTableState createState() => _FifthTableState();
}

class _FifthTableState extends State<FifthTable> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
          child: Row(
            children: [
              Text(
                "Result & Total Goals",
                style: TextStyle(color: Colors.orange),
              ),
              SizedBox(
                width: 60,
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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            children: [
              Text(
                "Home",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                width: 140,
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
                width: 40,
              ),
              Container(
                width: 40,
                height: 30,
                decoration: BoxDecoration(
                    color: Colors.redAccent,
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
                "Draw",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                width: 145,
              ),
              Container(
                width: 40,
                height: 30,
                decoration: BoxDecoration(
                    color: Colors.amberAccent, borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Text(
                    "10",
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
                    color: Colors.amberAccent, borderRadius: BorderRadius.circular(30)),
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
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            children: [
              Text(
                "Away",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                width: 145,
              ),
              Container(
                width: 40,
                height: 30,
                decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Text(
                    "95",
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
      ],
    );
  }
}
