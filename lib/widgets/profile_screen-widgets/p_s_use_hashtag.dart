import 'package:flutter/material.dart';

class UseHashtag extends StatefulWidget {
  UseHashtagState createState() => new UseHashtagState();
}

class UseHashtagState extends State<UseHashtag> {
  List<String> list = ['Sketches', 'Digital art', 'Painting', 'Craft'],
      selected = [];
  TextEditingController tc;

  @override
  void initState() {
    super.initState();
    tc = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {}
}
