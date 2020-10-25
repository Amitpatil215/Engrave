import 'package:flutter/material.dart';
import '../screens/login_screen.dart';
import '../screens/createscreen.dart';
import '../screens/home_screen.dart';
import '../screens/img_screen.dart';
import '../widgets/home_screen_widgets/comment.dart';

Map<String, Widget Function(BuildContext)> routeTable = {
  LoginScreen.routeName: (ctx) {
    return LoginScreen();
  },
  ImgScreen.routeName: (ctx) {
    return ImgScreen();
  },
  CreateScreen.routeName: (ctx) {
    return CreateScreen();
  },
  HomeScreen.routeName: (ctx) {
    return HomeScreen();
  },
  CommentPage.routeName: (ctx) {
    return CommentPage();
  },
};
