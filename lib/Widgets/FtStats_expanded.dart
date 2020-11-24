import 'package:edge_ui/Widgets/FtStats_FifthTable.dart';
import 'package:edge_ui/Widgets/FtStats_FourthTable.dart';
import 'package:edge_ui/Widgets/FtStats_SecTable.dart';
import 'package:edge_ui/Widgets/FtStats_ThirdTable.dart';
import 'package:flutter/material.dart';

import 'FTStats_FirstTable.dart';
import 'FtStats_SeventhTable.dart';
import 'FtStats_SixthTable.dart';

class FTStats extends StatefulWidget {
  @override
  _FTStatsState createState() => _FTStatsState();
}

class _FTStatsState extends State<FTStats> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background.png'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.6), BlendMode.luminosity),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.22,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/background.png'),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.6),
                            BlendMode.luminosity),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image(
                          image: AssetImage('assets/xbet.png'),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RaisedButton(
                              child: Text(
                                "FT Stats",
                                style: TextStyle(color: Colors.white),
                              ),
                              color: Colors.grey[900],
                              onPressed: () {},
                              elevation: 0.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: BorderSide(
                                      color: Colors.white, width: 0.1)),
                            ),
                            RaisedButton(
                              child: Text(
                                "HT Stats",
                                style: TextStyle(color: Colors.white),
                              ),
                              color: Colors.grey[900],
                              onPressed: () {},
                              elevation: 0.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: BorderSide(
                                      color: Colors.white, width: 0.1)),
                            ),
                            RaisedButton(
                              child: Text(
                                "Goals",
                                style: TextStyle(color: Colors.white),
                              ),
                              color: Colors.grey[900],
                              onPressed: () {},
                              elevation: 0.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: BorderSide(
                                      color: Colors.white, width: 0.1)),
                            ),
                            RaisedButton(
                              child: Text(
                                "Corners&Cards",
                                style: TextStyle(color: Colors.white),
                              ),
                              color: Colors.grey[900],
                              onPressed: () {},
                              elevation: 0.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: BorderSide(
                                      color: Colors.white, width: 0.1)),
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.white,
                          thickness: 0.2,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10.0,
                          vertical: 20.0,
                        ),
                        child: Text(
                          "BEST BET PREDICTION",
                          style: TextStyle(
                              color: Colors.orange,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            "Full Time",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "Home Win",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 05,
                      ),
                      Container(
                        width: 40,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(
                          child: Text(
                            "85",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      IconButton(
                          icon: Icon(
                            Icons.close_rounded,
                            color: Colors.orange,
                          ),
                          onPressed: () {})
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 10,
                        width: MediaQuery.of(context).size.width * 0.45,
                      ),
                      Text(
                        "Results",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Bookie Odds",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "True Odds",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  FirstTable(),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 1,
                    indent: 20,
                    endIndent: 20,
                  ),
                  SecTable(),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    color: Colors.grey,
                    indent: 20.0,
                    endIndent: 20.0,
                    thickness: 1,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ThirdTable(),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    color: Colors.grey,
                    indent: 20.0,
                    endIndent: 20.0,
                    thickness: 1,
                  ),
                  FourthTable(),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    color: Colors.grey,
                    indent: 20.0,
                    endIndent: 20.0,
                    thickness: 1,
                  ),
                  FifthTable(),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    color: Colors.grey,
                    indent: 20.0,
                    endIndent: 20.0,
                    thickness: 1,
                  ),
                  SixthTable(),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    color: Colors.grey,
                    indent: 20.0,
                    endIndent: 20.0,
                    thickness: 1,
                  ),
                  SeventhTable(),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
