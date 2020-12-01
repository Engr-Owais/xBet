import 'package:edge_ui/Widgets/goal_tab_expanded_widget.dart';
import 'package:flutter/material.dart';

import 'Screens/home_screen.dart';
import 'Widgets/FtStats_expanded.dart';

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
      home: HomeScreen(),
    );
  }
}
