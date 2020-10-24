//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/profile_screen-widgets/p_s_pick_image.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = 'profile';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orange[100],
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 15, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    onPressed: null,
                    color: Colors.white,
                  ),
                  Container(
                    width: 125.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(Icons.add_a_photo_rounded),
                          onPressed: null,
                          //add the image picker here after it select the hashtag
                          color: Colors.white,
                        ),
                        IconButton(
                            icon: Icon(Icons.menu),
                            onPressed: null,
                            color: Colors.white)
                      ],
                    ),
                  )
                ],
              ),
            ),
            Stack(
              children: [
                Column(
                  children: [
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(30),
                      child: Text(
                        'My Profile',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.orange[700],
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                        ),
                      ),
                    ),
                    Container(
                      width: double.maxFinite,
                      alignment: Alignment.centerRight,
                      child: Card(
                        //if user could insert a profile picture
                        //child: PickImage(),
                        child: SvgPicture.asset(
                          'assets/images/blank_canvas.svg',
                          width: 200,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Opacity(
                      opacity: 0.5,
                      child: Container(
                        child: SvgPicture.asset(
                          'assets/images/choice.svg',
                          height: 300.0,
                          width: 420.0,
                          allowDrawingOutsideViewBox: true,
                        ),
                      ),
                    ),
                    Container(
                      height: 500,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(100),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          //add bio entered by the user
                          Card(
                            child: Text(
                              'Bio taken from user in the center',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.deepOrange[300],
                              ),
                            ),
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                FlatButton(
                                  onPressed: null,
                                  child: Text(
                                    'ArtWork',
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                FlatButton(
                                  onPressed: null,
                                  child: Text(
                                    'Edit Profile',
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ]),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
