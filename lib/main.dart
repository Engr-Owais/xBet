import 'package:edge_ui/Screens/login.dart';
import 'package:flutter/material.dart';

import 'Widgets/FtStats_expanded.dart';
import 'Widgets/goal_tab_expanded_widget.dart';

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
      home: FTStats(),
    );
  }
}
