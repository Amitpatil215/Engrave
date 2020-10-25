<<<<<<< HEAD
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class UseHashtag extends StatefulWidget {
  static const routename = 'hashtag';
=======
import 'package:flutter/material.dart';

class UseHashtag extends StatefulWidget {
>>>>>>> 81e9e8bf9e4bfdcbd2e4cc9ed7682bb92f1a01c5
  UseHashtagState createState() => new UseHashtagState();
}

class UseHashtagState extends State<UseHashtag> {
<<<<<<< HEAD
  List<String> list = ['Sketches', 'Digital art', 'Painting', 'Craft'];
  String selected = '';

  getImage(ImageSource source, String hash) async {
    File image = await ImagePicker.pickImage(source: source);
    File cropped = await ImageCropper.cropImage(sourcePath: image.path);

    this.setState(() {
      selected = hash;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Upload Image',
          style: TextStyle(
            color: Colors.blueGrey,
          ),
        ),
        backgroundColor: Colors.orangeAccent,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                width: double.maxFinite,
                child: Text(
                  'Title',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              TextFormField(
                decoration: new InputDecoration(
                  labelText: "Enter Title",
                  fillColor: Colors.white,
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(25.0),
                    borderSide: new BorderSide(),
                  ),
                ),
              ),
              Container(
                width: double.maxFinite,
                child: Text(
                  'HashTag',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              TextFormField(
                decoration: new InputDecoration(
                  labelText: "Enter HashTag",
                  fillColor: Colors.white,
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(25.0),
                    borderSide: new BorderSide(),
                  ),
                ),
              ),
              Container(
                width: double.maxFinite,
                child: Text(
                  'Description',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              TextField(
                keyboardType: TextInputType.multiline,
                minLines: 1,
                maxLines: 5,
                decoration: new InputDecoration(
                  labelText: "Enter Description",
                  fillColor: Colors.white,
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(25.0),
                    borderSide: new BorderSide(),
                  ),
                ),
              ),
              //ostart
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Pick an image',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      ClipOval(
                        child: Material(
                          child: InkWell(
                            splashColor: Colors.red, // inkwell color
                            child: SizedBox(
                                width: 56,
                                height: 56,
                                child: Icon(Icons.image)),
                            onTap: () {
                              //_getImage(context, index, ImageSource.gallery);
                            },
                          ),
                        ),
                      ),
                      ClipOval(
                        child: Material(
                          child: InkWell(
                            splashColor: Colors.red, // inkwell color
                            child: SizedBox(
                                width: 56,
                                height: 56,
                                child: Icon(Icons.camera)),
                            onTap: () {
                              //_getImage(context, index, ImageSource.camera);
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  //end
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      RaisedButton(
                        child: Text('Reset'),
                        onPressed: null,
                      ),
                      RaisedButton(
                        child: Text('Upload'),
                        onPressed: null,
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
          Opacity(
            opacity: 0.4,
            child: Container(
              child: SvgPicture.asset(
                'assets/images/designer_life.svg',
              ),
            ),
          ),
        ],
      ),
    );
  }
=======
  List<String> list = ['Sketches', 'Digital art', 'Painting', 'Craft'],
      selected = [];
  TextEditingController tc;

  @override
  void initState() {
    super.initState();
    tc = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {}
>>>>>>> 81e9e8bf9e4bfdcbd2e4cc9ed7682bb92f1a01c5
}
