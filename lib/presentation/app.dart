import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:nozbe_lightweight/domain/model/task.dart';
import 'package:nozbe_lightweight/presentation/tasks.dart';

class AppPageWdidget extends StatefulWidget {
  @override
  AppPage createState() => AppPage();
}

class AppPage extends State<AppPageWdidget> {
  HashMap tasks = new HashMap<int, Task>();
  AppPage(){
    tasks[0] = Task('TODO1', 'Some description',false, false);
    tasks[1] = Task('TODO2', 'Some 2',true, true);
    tasks[2] = Task('TODO3', 'Some 3',false, true);
    tasks[3] = Task('TODO4', 'Get Some4',true, false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main'),
        actions: <Widget>[
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return [PopupMenuItem(
                value: true,
                child: Text('test'),
              )];
            },
          ),
        ],
      ),
      body: Tasks(tasks),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text('Nozbe4'),
              decoration: BoxDecoration(
                color: Colors.blue
              ),
            ),
            ListTile(
              title: Text('Element 1'),
              onTap: (){
                print('Element1');
              },

            ),
            ListTile(
              title: Text('Element 2'),
              onTap: (){
                print('Element2');
              },
            ),
          ],
        ),
      ),
    );
  }

}