import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zefyr/zefyr.dart';

import 'editor.dart';

class Comment extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Comment();
  }
}

class _Comment extends State<Comment> {
  ZefyrController _controller;
  FocusNode _focusNode;
  @override
  void initState() {
    super.initState();
    final document = new NotusDocument();
    _controller = new ZefyrController(document);
    _focusNode = new FocusNode();
  }

  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Colors.amber,
              radius: 15,
            ),
            SizedBox(width: 10,),
            Text('Mateusz Bartek', style: TextStyle(color: Colors.black, fontSize: 16),),
          ],
        ),
        RaisedButton(onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Editor()),
          );
        },
        )
      ],
    );
  }

}