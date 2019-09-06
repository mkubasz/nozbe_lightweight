import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nozbe_lightweight/presentation/task.dart';

import 'description.dart';

class TaskElement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Task()),
          );
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
        IconButton(icon: Icon(Icons.star)),
        ],),
      ),
    );
  }

}