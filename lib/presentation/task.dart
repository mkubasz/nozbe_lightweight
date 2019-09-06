import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'description.dart';
import 'package:nozbe_lightweight/domain/model/task.dart';

class TaskWidget extends StatefulWidget {
  Task _task;
  TaskWidget(Task task){
    _task = task;
  }
  @override
  _TaskWidgetState createState() => _TaskWidgetState(_task);
}

class _TaskWidgetState extends State<TaskWidget> {
  Task _task;
  _TaskWidgetState(Task task){
    _task = task;
  }


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
//              icon: Icon(Icons.check_circle_outline),
              icon: (this._task.completed ? Icon(Icons.check_circle_outline) : Icon(Icons.check_circle)),
              color: Colors.red[500],
              onPressed: _toggleComplete,
            ),
          Column(
            children: <Widget>[
              Text(_task.name),
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
      _task.completed = !_task.completed;
    });
  }
}