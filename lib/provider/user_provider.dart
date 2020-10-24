import 'package:flutter/material.dart';
import '../model/user.dart';

class UserProvider with ChangeNotifier {
  User ourUser;

  Future<void> setUser(
      {String userId, String username, String email, String urlSegment}) async {
    ourUser = User(
      email: email,
      userId: userId,
      username: username,
    );
  }
}
