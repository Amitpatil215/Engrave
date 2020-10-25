import 'dart:io';

import 'package:engrave/provider/auth_provider.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FirestoreImageUpload with ChangeNotifier {
  Future<void> uploadProfileImage(File image, BuildContext context) async {
    final userID = Provider.of<Auth>(context).userId;
    try {
      ///getting path of file bucket
      final _ref = FirebaseStorage.instance
          .ref()
          .child('user_profile_image')
          .child(userID + '.jpg');

      //uploading image to that path
      await _ref.putFile(image).onComplete;

      //getting that image url for easy acess
      //final imageUrl = await _ref.getDownloadURL();

      //saving image url into database

      //
    } catch (error) {
      debugPrint("Error Occured in firestor image uplaoding :$error");
    }
  }
}
