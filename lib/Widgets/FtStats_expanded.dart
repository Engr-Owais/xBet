import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:edge_ui/Widgets/FtStats_FifthTable.dart';
import 'package:edge_ui/Widgets/FtStats_FourthTable.dart';
import 'package:edge_ui/Widgets/FtStats_SecTable.dart';
import 'package:edge_ui/Widgets/FtStats_ThirdTable.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'FTStats_FirstTable.dart';
import 'FtStats_SeventhTable.dart';
import 'FtStats_SixthTable.dart';
import 'goal_tab_expanded_widget.dart';

class FTStats extends StatefulWidget {
  @override
  _FTStatsState createState() => _FTStatsState();
}

class _FTStatsState extends State<FTStats> {
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    final navBar = Container(
      height: 80,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 0.1),
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(30), topLeft: Radius.circular(30)),
        boxShadow: [
          BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 2,
          height: 50.0,
          items: <Widget>[
            Icon(Icons.stairs, size: 30, color: Colors.white),
            Icon(Icons.lightbulb, size: 30, color: Colors.white),
            Icon(Icons.table_chart, size: 30, color: Colors.white),
            Icon(Icons.star, size: 30, color: Colors.white),
            Icon(Icons.circle, size: 30, color: Colors.white),
          ],
          color: Colors.grey.withOpacity(0.0),
          buttonBackgroundColor: HexColor('#EA5A01'),
          backgroundColor: Colors.black.withOpacity(0.2),
          animationCurve: Curves.easeOutCubic,
          animationDuration: Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
        ),
      ),
    );
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        bottomNavigationBar: navBar,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/background.png',
              ),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.6), BlendMode.srcOver),
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
                      image: AssetImage('assets/HeaderBackground.jpg'),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.6), BlendMode.luminosity),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image(
                        image: AssetImage('assets/xbet.png'),
                      ),
                      Row(
                        children: List.generate(
                          4,
                          (index) => Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 2.0),
                              child: RaisedButton(
                                child: FittedBox(
                                  child: Text(
                                    index == 0
                                        ? "FT Stats"
                                        : index == 1
                                            ? "HT Stats"
                                            : index == 2
                                                ? "Goals"
                                                : "Corners And Cards",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  ),
                                ),
                                color: Colors.black.withOpacity(0.6),
                                onPressed: () {
                                  index == 0
                                      ? Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (_) => FTStats(),
                                          ),
                                        )
                                      : index == 2
                                          ? Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (_) => Goals(),
                                              ),
                                            )
                                          : () => {};
                                },
                                elevation: 0.0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    side: BorderSide(
                                        color: Colors.white, width: 0.2)),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.white,
                        thickness: 0.2,
                      ),
                    ],
                  ),
                ),
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
                              "BEST BET PREDICTION",
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            "Full Time",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "Home Win",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w600),
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
                                color: Colors.lightGreen,
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
                    Expanded(
                      child: Column(
                        children: [
                          IconButton(
                              icon: Icon(
                                Icons.close_rounded,
                                color: Colors.orange,
                              ),
                              onPressed: () {}),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
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
                          Text(
                            "Results",
                            style: TextStyle(
                                fontSize: 11,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            "Bookie Odds",
                            style: TextStyle(
                                fontSize: 11,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            "True Odds",
                            style: TextStyle(
                                fontSize: 11,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                FirstTable(),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  color: Colors.grey,
                  indent: 16.0,
                  endIndent: 16.0,
                ),
                SizedBox(
                  height: 20,
                ),
                SecTable(),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  color: Colors.grey,
                  indent: 16.0,
                  endIndent: 16.0,
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
                  indent: 16.0,
                  endIndent: 16.0,
                ),
                SizedBox(
                  height: 20,
                ),
                FourthTable(),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  color: Colors.grey,
                  indent: 16.0,
                  endIndent: 16.0,
                ),
                SizedBox(
                  height: 20,
                ),
                FifthTable(),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  color: Colors.grey,
                  indent: 16.0,
                  endIndent: 16.0,
                ),
                SizedBox(
                  height: 20,
                ),
                SixthTable(),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  color: Colors.grey,
                  indent: 16.0,
                  endIndent: 16.0,
                ),
                SizedBox(
                  height: 20,
                ),
                SeventhTable(),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
