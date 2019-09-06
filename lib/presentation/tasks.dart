import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nozbe_lightweight/presentation/task_element.dart';
import 'package:nozbe_lightweight/domain/model/task.dart';

class Tasks extends StatelessWidget {

  HashMap tasks = new HashMap<int, Task>();
  Tasks(HashMap<int, Task> _map){
    tasks = _map;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: tasks.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 50,
            child: Container(child: TaskElement(tasks[index]))
          );
        }
    );
  }

}