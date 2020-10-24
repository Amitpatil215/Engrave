import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImgScreen extends StatelessWidget {
  static const routeName = 'img';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: <Widget>[
              Container(
                height: 300,
                child: SvgPicture.asset('assets/images/dream_art.svg'),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        child: Text('Title!'),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(5),
                        child: Text('Author!'),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(5),
                    child: Text('Captions'),
                  ),
                  Container(
                      height: 700,
                      child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: (context, index) => Container(
                          height: 170,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Colors.red, Colors.blue],
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ))
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
