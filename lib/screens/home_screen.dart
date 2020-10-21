import 'package:flutter/material.dart';
import '../widgets/home_screen_widgets/h_s_app_bar_title.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: HSAppBarTitle(),
      ),
    );
  }
}
