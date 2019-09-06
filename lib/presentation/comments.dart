import 'package:flutter/cupertino.dart';

import 'comment.dart';

class Comments extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Comments();
  }
}

class _Comments extends State<Comments> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: <Widget>[
        Comment()
    ],);
  }

}