import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:edge_ui/IconsFont/my_flutter_app_icons.dart';
import 'package:edge_ui/Widgets/cardButtons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropdown/flutter_dropdown.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();
  SfRangeValues _values = SfRangeValues(40.0, 80.0);

  Widget _carBtn(String text) {
    return Container(
      height: 35,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
      ),
      child: RaisedButton(
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
        color: Colors.grey.withOpacity(0.2),
        onPressed: () {},
        elevation: 0.0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(color: Colors.white, width: 0.1)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final navBar = Container(
      height: 80,
      decoration: BoxDecoration(
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
          backgroundColor: Colors.grey.withOpacity(0.2),
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
    final _appBar = AppBar(
      elevation: 0.0,
      toolbarHeight: MediaQuery.of(context).size.height * 0.1,
      backgroundColor: HexColor('#121212'),
      flexibleSpace: ColorFiltered(
        colorFilter:
            ColorFilter.mode(Colors.grey.withOpacity(0.2), BlendMode.srcOver),
        child: Image(
          image: AssetImage('assets/background.png'),
          fit: BoxFit.fill,
        ),
      ),
      leading: IconButton(
        color: Colors.white,
        icon: Icon(
          Icons.menu,
          size: 40,
        ),
        onPressed: () {},
      ),
      title: Image(
        image: AssetImage('assets/xbet.png'),
        alignment: Alignment.centerLeft,
        width: 120,
      ),
      actions: [
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: HexColor('#EA5A01'),
              ),
              child: IconButton(
                icon: Icon(MyFlutterApp.filter_pressed),
                iconSize: 25,
                onPressed: () {
                  _showModalFilter();
                },
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
    return SafeArea(
      child: Scaffold(
        appBar: _appBar,
        bottomNavigationBar: navBar,
        backgroundColor: Colors.grey.withOpacity(0.2),
        body: Container(
          height: (MediaQuery.of(context).size.height -
              _appBar.preferredSize.height -
              MediaQuery.of(context).padding.top),
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Column(
              children: [
                Container(
                  decoration: new BoxDecoration(
                    color: Colors.grey.withOpacity(0.0),
                  ),
                  height: MediaQuery.of(context).size.height * 0.18,
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RaisedButton(
                              child: Text(
                                "Upcoming",
                                style: TextStyle(color: Colors.white),
                              ),
                              color: Colors.grey.withOpacity(0.2),
                              onPressed: () {},
                              elevation: 0.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: BorderSide(
                                      color: Colors.white, width: 0.1)),
                            ),
                            RaisedButton(
                              child: Text(
                                "Inplay",
                                style: TextStyle(color: Colors.white),
                              ),
                              color: Colors.grey.withOpacity(0.2),
                              onPressed: () {},
                              elevation: 0.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: BorderSide(
                                      color: Colors.white, width: 0.1)),
                            ),
                            RaisedButton(
                              child: Text(
                                "Completed",
                                style: TextStyle(color: Colors.white),
                              ),
                              color: Colors.grey.withOpacity(0.2),
                              onPressed: () {},
                              elevation: 0.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: BorderSide(
                                      color: Colors.white, width: 0.1)),
                            ),
                            RaisedButton.icon(
                              icon: Icon(Icons.search, color: Colors.white),
                              label: Text(
                                "Search",
                                style: TextStyle(color: Colors.white),
                              ),
                              color: Colors.grey.withOpacity(0.2),
                              onPressed: () {},
                              elevation: 0.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: BorderSide(
                                      color: Colors.white, width: 0.1)),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 24.0),
                              child: Text(
                                "Goals",
                                style: TextStyle(color: Colors.amber[900]),
                              ),
                            ),
                            SizedBox(width: 150),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Corners",
                                  style: TextStyle(color: Colors.amber[900]),
                                ),
                                SizedBox(width: 50),
                                Text(
                                  "Cards",
                                  style: TextStyle(color: Colors.amber[900]),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 8,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 24.0),
                              child: Text(
                                "0.15",
                                style: TextStyle(color: Colors.white),
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: new BoxDecoration(
                    image: new DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Colors.grey.withOpacity(0.2), BlendMode.srcOver),
                      image: new AssetImage("assets/background.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  children: [
                    CardHomeButtons(),
                    CardHomeButtons(),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  _showModalFilter() {
    showMaterialModalBottomSheet(
      backgroundColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      context: context,
      builder: (context) => Container(
        height: MediaQuery.of(context).size.height * 0.6,
        width: MediaQuery.of(context).size.width,
        decoration: new BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          image: new DecorationImage(
            colorFilter: ColorFilter.mode(
                Colors.grey.withOpacity(0.4), BlendMode.srcOver),
            image: new AssetImage("assets/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.55,
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "Filter",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Reset",
                            style: TextStyle(
                                color: Colors.orange,
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 32.0),
                    child: Text(
                      "Sort By Goals",
                      style: TextStyle(
                          color: Colors.orange,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal),
                    ),
                  ),
                  SizedBox(
                    width: 120,
                  ),
                  Text(
                    "Sort By Date",
                    style: TextStyle(
                        color: Colors.orange,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 24.0, top: 5.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      decoration: BoxDecoration(
                        color: Colors.grey[600],
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: DropDown(
                          customWidgets: [
                            Text("Highest"),
                            Text("Average"),
                            Text("Lowest")
                          ],
                          showUnderline: false,
                          initialValue: "Highest",
                          items: ["Highest", "Average", "Lowest"],
                          hint: Text("Highest"),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 4.0, top: 5.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      decoration: BoxDecoration(
                        color: Colors.grey[600],
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: DropDown(
                          customWidgets: [
                            Text("Highest"),
                            Text("Average"),
                            Text("Lowest")
                          ],
                          showUnderline: false,
                          initialValue: "Highest",
                          items: ["Highest", "Average", "Lowest"],
                          hint: Text("Highest"),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.04,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 32.0),
                child: Text(
                  "Choose League",
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0,
              ),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.08,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.grey[600],
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: DropDown(
                    customWidgets: [
                      Text("Spain"),
                      Text("Italy"),
                      Text("English")
                    ],
                    showUnderline: false,
                    initialValue: "English",
                    items: ["Spain", "Italy", "English"],
                    hint: Text("English"),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.025,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 32.0),
                child: Text(
                  "Probability",
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width,
                child: SfRangeSlider(
                  activeColor: Colors.orange[900],
                  min: 0.0,
                  max: 100.0,
                  values: _values,
                  interval: 20,
                  showTicks: true,
                  showLabels: true,
                  showTooltip: true,
                  minorTicksPerInterval: 1,
                  onChanged: (SfRangeValues values) {
                    setState(() {
                      _values = values;
                    });
                  },
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 24.0),
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.orange[900],
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(
                      child: Text(
                    "APPLY",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
