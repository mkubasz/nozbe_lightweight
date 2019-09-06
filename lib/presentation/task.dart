import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'description.dart';

class Task extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          print('Card tapped.');
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
          Radio(),
          Column(
            children: <Widget>[
              Text('Test'),
              Description()
            ],
          ),
        IconButton(icon: new Icon(Icons.star)),
        ],),
      ),
    );
  }

}