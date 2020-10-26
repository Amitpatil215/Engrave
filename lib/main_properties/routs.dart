import 'package:engrave/widgets/profile_screen-widgets/p_s_use_hashtag.dart';
import 'package:flutter/material.dart';
import '../screens/login_screen.dart';

import '../screens/createscreen.dart';
import '../screens/home_screen.dart';

import '../screens/profile_screen.dart';


Map<String, Widget Function(BuildContext)> routeTable = {
  LoginScreen.routeName: (ctx) {
    return LoginScreen();
  },

  CreateScreen.routeName: (ctx) {
    return CreateScreen();
  },
  HomeScreen.routeName: (ctx) {
    return HomeScreen();
  },
  ProfileScreen.routeName: (ctx) {
    return ProfileScreen();

  },
  UseHashtag.routename: (ctx) {
    return UseHashtag();
  },
};
