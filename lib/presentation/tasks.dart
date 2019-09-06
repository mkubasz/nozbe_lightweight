import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nozbe_lightweight/presentation/task.dart';

class Tasks extends StatelessWidget {
  final List<String> tasks = <String>['A', 'B', 'C'];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: tasks.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 50,
            child: Container(child: Task())
          );
        }
    );
  }

}