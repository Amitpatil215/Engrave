import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = 'profile';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orange[200],
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
                Opacity(
                  opacity: 0.5,
                  child: Container(
                    child: SvgPicture.asset(
                      'assets/images/choice.svg',
                      height: 300.0,
                      width: 520.0,
                      allowDrawingOutsideViewBox: true,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    'My Profile',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
