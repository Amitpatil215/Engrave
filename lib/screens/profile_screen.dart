import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = 'profile';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 15, left: 10),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    onPressed: null,
                  ),
                  Container(
                    width: 125.0,
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.add_a_photo_rounded),
                          onPressed: null,
                        ),
                        IconButton(
                          icon: Icon(Icons.menu),
                          onPressed: null,
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
