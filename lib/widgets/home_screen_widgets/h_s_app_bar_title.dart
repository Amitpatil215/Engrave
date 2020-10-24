import 'package:flutter/material.dart';

/// This is refactored widget of App bar title in home screen
class HSAppBarTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Engrave",
      style: TextStyle(
        color: Colors.black,
        fontSize: 30,
        fontWeight: FontWeight.w300,
      ),
    );
  }
}
