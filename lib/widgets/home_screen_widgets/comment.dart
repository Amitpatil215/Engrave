import 'package:flutter/material.dart';

class CommentPage extends StatefulWidget {
  static const routeName = 'mas';
  @override
  _CommentPageState createState() => _CommentPageState();
}

class _CommentPageState extends State<CommentPage> {
  final commentController = TextEditingController();
  List<String> _comments = ["nice", "cool"];
  void _add(String val) {
    setState(() {
      _comments.add(val);
    });
  }

  Widget _buidCommentList() {
    return ListView.builder(
      itemBuilder: (context, index) {
        if (index < _comments.length) {
          return _buildCommentItem(_comments[index]);
        }
      },
    );
  }

  Widget _buildCommentItem(String comment) {
    return ListTile(title: Text(comment));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Comment Page'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: _buidCommentList(),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextField(
                // onSubmitted: (String submittedStr) {
                //   _add(submittedStr);
                // },
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(20.0),
                  hintText: 'Nice Picture!',
                ),
                controller: commentController,
              ),
              RaisedButton(
                onPressed: () {
                  _add(commentController.text);
                  commentController.clear();
                },
                child: Text(
                  'Comment',
                  style: TextStyle(
                    color: Colors.pink[50],
                  ),
                ),
                color: Colors.indigo[100],
              ),
            ],
          )
        ],
      ),
    );
  }
}
