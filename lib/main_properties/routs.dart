import 'package:flutter/material.dart';
import '../screens/login_screen.dart';

Map<String, Widget Function(BuildContext)> routeTable = {
  LoginScreen.routeName: (ctx) {
    return LoginScreen();
  },
};
