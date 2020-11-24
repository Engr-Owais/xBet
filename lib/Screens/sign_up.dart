import 'package:edge_ui/Widgets/customiputbox.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'login.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final navbar = BottomAppBar(
      color: Colors.black,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.15,
        child: Column(
          children: [
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => LoginPage(),
                ),
              ),
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                width: MediaQuery.of(context).size.width * 0.85,
                height: 55,
                decoration: BoxDecoration(
                  color: HexColor('#FFA500'),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    'Create an Account',
                    style: TextStyle(
                        fontFamily: 'ProductSans',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Already have an account? ',
                    style: TextStyle(
                      fontFamily: 'Product Sans',
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff8f9db5).withOpacity(0.45),
                    ),
                  ),
                  TextSpan(
                    text: 'Sign In',
                    recognizer: new TapGestureRecognizer()
                      ..onTap = () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => LoginPage(),
                            ),
                          ),
                    style: TextStyle(
                      fontFamily: 'Product Sans',
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff90b7ff),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
    var scrWidth = MediaQuery.of(context).size.width;
    var scrHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: navbar,
        backgroundColor: HexColor('#121212'),
        body: SingleChildScrollView(
          child: Container(
            height: (MediaQuery.of(context).size.height -
                MediaQuery.of(context).padding.top),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 40.0, top: 20),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            fontFamily: 'Cardo',
                            fontSize: 35,
                            color: HexColor('#f0f0f0'),
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        //
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 40, top: 5),
                        child: Text(
                          'Sign up with',
                          style: TextStyle(
                            fontFamily: 'Nunito Sans',
                            fontSize: 15,
                            color: Colors.grey,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    //

                    SizedBox(
                      height: 40,
                    ),
                    //
                    MyCustomInputBox(
                      label: 'Name',
                      inputHint: 'John',
                    ),
                    //
                    SizedBox(
                      height: 10,
                    ),
                    //
                    MyCustomInputBox(
                      label: 'Email',
                      inputHint: 'example@example.com',
                    ),
                    //
                    SizedBox(
                      height: 10,
                    ),
                    //
                    MyCustomInputBox(
                      label: 'Password',
                      inputHint: '8+ Characters,1 Capital letter',
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32.0, vertical: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Divider(
                              indent: 32.0,
                              endIndent: 20,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "SIGN IN WITH",
                            style: TextStyle(color: Colors.white),
                          ),
                          Expanded(
                            child: Divider(
                              endIndent: 32.0,
                              indent: 20,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Neu_button(
                            char: 'G',
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 58,
                            height: 58,
                            decoration: BoxDecoration(
                              color: HexColor('#FFA500'),
                              borderRadius: BorderRadius.circular(13),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(12, 11),
                                  blurRadius: 26,
                                  color: Color(0xffaaaaaa).withOpacity(0.1),
                                )
                              ],
                            ),
                            //
                            child: Center(
                                child: Image(
                              image: AssetImage('assets/pngapplelogo.png'),
                              height: 30,
                            )),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Neu_button(
                            char: 'f',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                ClipPath(
                  clipper: OuterClippedPart(),
                  child: Container(
                    color: HexColor('#FFA500'),
                    width: scrWidth,
                    height: scrHeight,
                  ),
                ),
                //
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Neu_button extends StatelessWidget {
  Neu_button({this.char});
  String char;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 58,
      height: 58,
      decoration: BoxDecoration(
        color: HexColor('#FFA500'),
        borderRadius: BorderRadius.circular(13),
        boxShadow: [
          BoxShadow(
            offset: Offset(12, 11),
            blurRadius: 26,
            color: Color(0xffaaaaaa).withOpacity(0.1),
          )
        ],
      ),
      //
      child: Center(
        child: Text(
          char,
          style: TextStyle(
            fontFamily: 'ProductSans',
            fontSize: 29,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

class OuterClippedPart extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    //
    path.moveTo(size.width / 2, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height / 4);
    //
    path.cubicTo(size.width * 0.55, size.height * 0.16, size.width * 0.85,
        size.height * 0.05, size.width / 2, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
