import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirestoreImageUpload with ChangeNotifier {
  Future<void> uploadProfileImage(File image, String userID) async {
    try {
      ///getting path of file bucket
      final _ref = FirebaseStorage.instance
          .ref()
          .child('user_profile_image')
          .child(userID + '.jpg');

      //uploading image to that path
      await _ref.putFile(image).onComplete;

      //getting that image url for easy acess
      final imageUrl = await _ref.getDownloadURL();
      print(imageUrl);
      //saving image url into database

      //
    } catch (error) {
      debugPrint("Error Occured in firestor image uplaoding :$error");
    }
  }
}
