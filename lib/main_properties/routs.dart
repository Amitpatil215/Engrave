import 'package:flutter/material.dart';
import '../screens/login_screen.dart';
import '../screens/createscreen.dart';
import '../screens/home_screen.dart';

Map<String, Widget Function(BuildContext)> routeTable = {
  LoginScreen.routeName: (ctx) {
    return LoginScreen();
  },
};

Map<String, Widget Function(BuildContext)> routest = {
  CreateScreen.routeName: (ctx) {
    return CreateScreen();
  },
};
Map<String, Widget Function(BuildContext)> rT = {
  HomeScreen.routeName: (ctx) {
    return HomeScreen();
  },
};
