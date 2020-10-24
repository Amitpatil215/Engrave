import 'package:flutter/material.dart';
import '../widgets/color.dart';
import '../widgets/home_screen_widgets/h_s_app_bar_title.dart';
import '../widgets/home_screen_widgets/h_s_profile_image.dart';
import '../widgets/home_screen_widgets/h_s_list_view.dart';
import '../widgets/home_screen_widgets/h_s_test_button.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = 'home-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: appBarColor,
        title: HSAppBarTitle(),
        actions: [
          /// This button is for debuging purpose
          HSTestButton(),
          HSProfileImage(),
        ],
      ),
      body: Container(
        height: 700,
        child: HSListView(),
      ),
    );
  }
}
