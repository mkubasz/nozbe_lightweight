import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'description.dart';
import 'package:nozbe_lightweight/domain/model/task.dart';

class TaskElement extends StatefulWidget {
  Task _task;
  TaskElement(Task task){
    _task = task;
  }
  @override
  _TaskWidgetState createState() => _TaskWidgetState(_task);
}

class _TaskWidgetState extends State<TaskElement> {
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
              icon: (this._task.completed ? Icon(Icons.check_circle) : Icon(Icons.check_circle_outline)),
              color: Colors.red[500],
              onPressed: _toggleComplete,
            ),
          Column(
            children: <Widget>[
              Text(_task.name),
              Description()
            ],
          ),
        IconButton(
          icon: (this._task.favorite ? Icon(Icons.star) : Icon(Icons.star_border)),
          onPressed: _toggleFavorite,
        ),
        ],),
      ),
    );
  }
  void _toggleComplete() {
    setState(() {
      _task.completed = !_task.completed;
    });
  }
  void _toggleFavorite() {
    setState(() {
      _task.favorite = !_task.favorite;
    });
  }
}