import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as httpUsing;

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

  Future<void> fetchUser(String token) async {
    final Map<String, String> headers = {
      'Content-Type': 'application/json;charset=UTF-8',
      'Charset': 'utf-8',
      'Authorization': token,
    };
    var url = "https://engraveapi.herokuapp.com/api";

    try {
      final response = await httpUsing.get(
        url,
        headers: headers,
      );

      // final response = await httpUsing.post(url,
      //     headers: headers,
      //     body: json.encode(
      //       {
      //         "email": email,
      //         "password": password,
      //       },
      //     ));
      // final response = await httpUsing.get(
      //   url,
      //   headers: headers,
      // );

      final responseData = json.decode(response.body);
      print("responded data $responseData.");
      // print(responseData['user']['_id']);

      // _token = responseData['token'];
      //  _userID = responseData['user']['_id'];

      notifyListeners();
    } catch (error) {
      print("Printing json error");
      print(error);
      // throw error;
    }
  }

  Future<void> getAllDeta() async {
    final Map<String, String> headers = {
      'Content-Type': 'application/json;charset=UTF-8',
      'Charset': 'utf-8',
    };
    var url = "https://engraveapi.herokuapp.com/api/alldata";

    try {
      final response = await httpUsing.get(
        url,
        headers: headers,
      );

      // final response = await httpUsing.post(url,
      //     headers: headers,
      //     body: json.encode(
      //       {
      //         "email": email,
      //         "password": password,
      //       },
      //     ));
      // final response = await httpUsing.get(
      //   url,
      //   headers: headers,
      // );

      final responseData = json.decode(response.body);
      print("responded data $responseData.");
      // print(responseData['user']['_id']);

      notifyListeners();
    } catch (error) {
      print("Printing json error");
      print(error);
      // throw error;
    }
  }

//   Future<void> createUser(String token) async {
//     final Map<String, String> headers = {
//       'Content-Type': 'application/json;charset=UTF-8',
//       'Charset': 'utf-8',
//       'Authorization': token,
//     };
//     var url = "https://engraveapi.herokuapp.com/api";

//     try {
//       final response = await httpUsing.post(url,
//           headers: headers,
//           body: json.encode(
//             {
//               "title": email,
//               "password": password,
//             },
//           ));

//       final responseData = json.decode(response.body);
//       print("responded data $responseData.");
//       // print(responseData['user']['_id']);

//       // _token = responseData['token'];
//       //  _userID = responseData['user']['_id'];

//       notifyListeners();
//     } catch (error) {
//       print("Printing json error");
//       print(error);
//       // throw error;
//     }
//   }
}
