import 'package:edge_ui/Screens/login.dart';
import 'package:flutter/material.dart';

import 'Screens/sign_up.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'XBET EDGE',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.orange),
      home: SignUpPage(),
    );
  }
}
