import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CardHomeButtons extends StatefulWidget {
  @override
  _CardHomeButtonsState createState() => _CardHomeButtonsState();
}

class _CardHomeButtonsState extends State<CardHomeButtons> {
  @override
  Widget build(BuildContext context) {
    Widget _carBtn(Color color, String text) {
      return Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          height: 25,
          width: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
          ),
          child: RaisedButton(
            child: Text(
              text,
              style: TextStyle(color: Colors.white, fontSize: 11),
            ),
            color: color,
            onPressed: () {},
            elevation: 0.0,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
        ),
      );
    }

    return Container(
      height: MediaQuery.of(context).size.height * 0.17,
      decoration: new BoxDecoration(
        boxShadow: [
          new BoxShadow(
            color: Colors.black,
            blurRadius: 15.0,
          ),
        ],
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.white70, width: 0.2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 2.0, horizontal: 8.0),
                    child: Text(
                      "Swindon v Binton",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 2.0, horizontal: 4.0),
                    child: Row(
                      children: [
                        Text(
                          "26/9/20 at 15:00",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, color: Colors.white),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _carBtn(Colors.teal[200], "98"),
                      Badge(
                        badgeContent: Text(
                          '3',
                          style: TextStyle(color: Colors.white),
                        ),
                        badgeColor: Colors.orangeAccent,
                        position: BadgePosition.topEnd(top: -12, end: 2),
                        elevation: 0.0,
                        child: _carBtn(Colors.teal[200], "98"),
                      ),
                      _carBtn(Colors.amber, "98"),
                      _carBtn(Colors.pink[200], "98"),
                      _carBtn(Colors.amber, "98"),
                      _carBtn(Colors.amber, "98"),
                      _carBtn(Colors.teal, "98"),
                      _carBtn(Colors.red, "98"),
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 1.0, horizontal: 8.0),
                  child: Text(
                    "Upcoming",
                    style: TextStyle(
                      color: HexColor('#EA5A01'),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        color: HexColor('#191919'),
        elevation: 10.0,
      ),
    );
  }
}
