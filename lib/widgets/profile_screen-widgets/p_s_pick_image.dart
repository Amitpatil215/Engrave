import 'package:flutter/material.dart';
import 'dart:io';
//import 'package:image_picker/image_picker.dart';

class PickImage extends StatefulWidget {
  PickImageState createState() => new PickImageState();
}

class PickImageState extends State<PickImage> {
  File selectedFile;
  //final String hashTag;
  //PickImage(this.selectedFile);
  Widget getImageWidget() {
    if (selectedFile != null) {
      return Image.file(
        selectedFile,
        width: 200,
        height: 200,
        fit: BoxFit.cover,
      );
    } else {
      return Image.asset(
        'assets/images/blank_canvas.svg',
        width: 200,
        height: 200,
        fit: BoxFit.cover,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return getImageWidget();
  }
}
