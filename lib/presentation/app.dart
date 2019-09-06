import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:nozbe_lightweight/domain/model/task.dart';
import 'package:nozbe_lightweight/presentation/drawer.dart';
import 'package:nozbe_lightweight/presentation/tasks.dart';

class AppPageWdidget extends StatefulWidget {
  @override
  AppPage createState() => AppPage();
}

class AppPage extends State<AppPageWdidget> {
//  HashMap tasks = new HashMap<int, Task>();

  @override
  void initState() {
    super.initState();
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
      body: Tasks(),
      drawer: NozbeDrawer()
    );
  }

}