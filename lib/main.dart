import 'package:flutter/material.dart';
import './screens/home_screen.dart';
import './main_properties/theme.dart';
import './main_properties/routs.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme,

      /// For debug purpose add your screen Widget here and define it in route table
      /// make sure to comment out your changes once you ready to send a PR.
      home: HomeScreen(),
      routes: routeTable,
    );
  }
}
