import 'package:edge_ui/Screens/login.dart';
import 'package:edge_ui/Widgets/customiputbox.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Stack(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: ColorFiltered(
                    colorFilter: ColorFilter.mode(
                        Colors.grey[500].withOpacity(0.1), BlendMode.srcOver),
                    child: Image(
                      image: AssetImage("assets/xBettBack.PNG"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 20.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.menu,
                                color: Colors.white,
                                size: 30,
                              ),
                              Image(image: AssetImage("assets/xbet.png")),
                            ],
                          ),
                          Text(
                            "Sign Up",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.normal,
                              letterSpacing: 1,
                              wordSpacing: 2,
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          MyCustomInputBox(
                            label: "Email",
                            inputHint: "example@gmail.com",
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          MyCustomInputBox(
                            label: "Password",
                            inputHint: "8+ Characters , 1 Capital Letter",
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10.0, bottom: 10.0),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  child: Text(
                                    "How did you find us?",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontFamily: 'Product Sans',
                                        fontSize: 15,
                                        color: Colors.orange[800],
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.08,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    border: Border.all(color: Colors.white),
                                  ),
                                  child: Padding(
                                      padding:
                                          const EdgeInsets.only(left: 16.0),
                                      child: DropdownButtonHideUnderline(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0),
                                          child: DropdownButton<String>(
                                            hint: Text("Select",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.white)),
                                            dropdownColor: Colors.orange[800],
                                            iconEnabledColor:
                                                Colors.orange[800],
                                            items: <String>[
                                              'Select',
                                              'B',
                                              'C',
                                              'D'
                                            ].map((String value) {
                                              return new DropdownMenuItem<
                                                  String>(
                                                value: value,
                                                child: new Text(value),
                                              );
                                            }).toList(),
                                            onChanged: (_) {},
                                          ),
                                        ),
                                      )),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          MyCustomInputBox(
                            label: "Telegram ID",
                            inputHint: "015151154",
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10.0,
                              top: 20.0,
                              right: 10.0,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Divider(
                                    indent: 10.0,
                                    endIndent: 15,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "SIGN UP USING",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                Expanded(
                                  child: Divider(
                                    endIndent: 10.0,
                                    indent: 15,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Neubutton(
                                    char: 'G',
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    width: 58,
                                    height: 58,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey, width: 0.1),
                                      color: Colors.grey[900],
                                      borderRadius: BorderRadius.circular(13),
                                    ),
                                    //
                                    child: Center(
                                      child: Image(
                                        image: AssetImage(
                                            'assets/pngapplelogo.png'),
                                        color: Colors.orange[800],
                                        height: 40,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Neubutton(
                                    char: 'f',
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.orange[800],
                            ),
                            child: RaisedButton(
                              elevation: 0.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                              color: Colors.orange[800],
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => LoginPage(),
                                  ),
                                );
                              },
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Neubutton extends StatelessWidget {
  final String char;
  Neubutton({this.char});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 58,
      height: 58,
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(13),
        border: Border.all(color: Colors.grey, width: 0.1),
      ),
      //
      child: Center(
        child: Text(
          char,
          style: TextStyle(
            fontFamily: 'ProductSans',
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.orange[800],
          ),
        ),
      ),
    );
  }
}
