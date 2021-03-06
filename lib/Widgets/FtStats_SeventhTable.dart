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
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      "BTTS",
                      style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Text(
                    "0-1",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Text(
                    "1-1",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [ Text(
                    "2-1",
                    style: TextStyle(color: Colors.white),
                  ),],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                children: [],
              ),
            ),
            Expanded(
              child: Column(
                children: [
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
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                    width: 40,
                    height: 30,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                      child: Text(
                        "10",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [Container(
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
                  ),],
              ),
            ),
          ],
        ),
        
      ],
    );
  }
}
