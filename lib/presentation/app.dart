import 'package:flutter/material.dart';
import 'package:nozbe_lightweight/presentation/tasks.dart';

class AppPage extends StatelessWidget {
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