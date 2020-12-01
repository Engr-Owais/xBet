import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Subscription extends StatefulWidget {
  @override
  _SubscriptionState createState() => _SubscriptionState();
}

class _SubscriptionState extends State<Subscription> {
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    final navBar = Container(
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),
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
          backgroundColor: Colors.black,
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
    final _buyButton = Positioned(
      top: MediaQuery.of(context).size.height * 0.12,
      left: MediaQuery.of(context).size.width * 0.35,
      right: MediaQuery.of(context).size.width * 0.35,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.08,
        width: MediaQuery.of(context).size.width,
        child: RaisedButton(
          child: Text(
            "BUY",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          color: Colors.orange,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          onPressed: () {},
        ),
      ),
    );
    final bulletPoint = Container(
      height: 10.0,
      width: 10.0,
      decoration: new BoxDecoration(
          color: Colors.orange, borderRadius: BorderRadius.circular(1)),
    );
    Widget bulletText(String text) {
      return Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.05,
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: bulletPoint,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Text(
                    text,
                    maxLines: 3,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    final _appBar = AppBar(
      elevation: 1.0,
      toolbarHeight: MediaQuery.of(context).size.height * 0.1,
      backgroundColor: HexColor('#121212'),
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
        width: 180,
      ),
    );
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.withOpacity(0.2),
        bottomNavigationBar: navBar,
        appBar: _appBar,
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/AabdBackground.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 20,
                ),
                Expanded(
                  flex: 4,
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Container(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 40.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Monthly",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "6.99/mo",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          height: MediaQuery.of(context).size.height * 0.16,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(60),
                            border: Border.all(color: Colors.white, width: 2.0),
                          ),
                        ),
                      ),
                      _buyButton,
                    ],
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Container(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 40.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Yearly",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "6.99/yr",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          height: MediaQuery.of(context).size.height * 0.16,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/AabdBackground.jpg"),
                              fit: BoxFit.fitWidth,
                            ),
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(60),
                            border: Border.all(color: Colors.white, width: 2.0),
                          ),
                        ),
                      ),
                      _buyButton,
                    ],
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Container(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 40.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Monthly",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "6.99/mo",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          height: MediaQuery.of(context).size.height * 0.16,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(60),
                            border: Border.all(color: Colors.white, width: 2.0),
                          ),
                        ),
                      ),
                      _buyButton
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 5.0,
                      child: Text(
                        "PREMIUM BENEFITS",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {},
                      color: Colors.orange,
                    ),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.6,
                    width: MediaQuery.of(context).size.width,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          bulletText("Just 12p per day investment"),
                          bulletText("Perfect for more experience better"),
                          bulletText(
                              "24hr acess to data-instant acess after\npayment"),
                          bulletText(
                              "Free Cash Giveaway and Composition \nfor Members"),
                          bulletText(
                              "FREE BONUS : Extended Desktop \nVersion with 110+ States"),
                          bulletText(
                              "Access to a Premium VIP Telegram\nCommunity Group and channel"),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 10,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
