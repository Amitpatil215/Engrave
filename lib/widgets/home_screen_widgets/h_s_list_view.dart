import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../screens/img_screen.dart';
import './comment.dart';

class HSListView extends StatefulWidget {
  @override
  _HSListViewState createState() => _HSListViewState();
}

class _HSListViewState extends State<HSListView> {
  final commentController = TextEditingController();

  int count = 0;
  _commentPressed() {
    setState(() {
      Navigator.of(context).pushNamed(CommentPage.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => Column(
        children: [
          SizedBox(
            height: 90,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(ImgScreen.routeName);
              },
              child: Stack(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                overflow: Overflow.visible,
                children: [
                  Container(
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
                  Positioned(
                    bottom: 100,
                    left: 22.w,
                    child: Container(
                      height: 140,
                      width: 320.w,
                      child: SvgPicture.asset('assets/images/dream_art.svg'),
                      decoration: BoxDecoration(
                        // color: Colors.red,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                      setState(() {
                        count = count + 1;
                      });
                    },
                    child: Icon(
                      Icons.auto_awesome,
                      size: 30.0,
                      color: Colors.amber[300],
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.comment_bank,
                      size: 30.0,
                      color: Colors.blue,
                    ),
                    onPressed: () {
                      return _commentPressed();
                    },
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  count.toString(),
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
