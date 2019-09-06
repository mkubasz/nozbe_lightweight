import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'description.dart';

class TaskWidget extends StatefulWidget {
  String _name = '';
  TaskWidget(name){
    _name = name;
  }
  @override
  _TaskWidgetState createState() => _TaskWidgetState(_name);
}

class _TaskWidgetState extends State<TaskWidget> {
  String _name = '';
  _TaskWidgetState(name){
    _name = name;
  }
  bool _isFavorited = true;
  bool _isCompleted = false;


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
            IconButton(
              icon: (_isCompleted ? Icon(Icons.check_circle_outline) : Icon(Icons.check_circle)),
              color: Colors.red[500],
              onPressed: _toggleComplete,
            ),
          Column(
            children: <Widget>[
              Text(_name),
              Description()
            ],
          ),
        IconButton(icon: new Icon(Icons.star)),
        ],),
      ),
    );
  }
  void _toggleComplete() {
    setState(() {
      _isCompleted = !_isCompleted;
    });
  }
}