import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'comments.dart';

class TaskPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Task();
  }
}

class _Task extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: FlexibleSpaceBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Radio(),
              Container(
                padding: EdgeInsets.only(top: 20),
                width: 150,
                child: Text(
                  "This text is very very very very very very ",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 5,
                ),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext bc) {
                      return Container(
                        child: Wrap(
                          children: <Widget>[
                            ListTile(
                              title: Text('Mark as unread'),
                            ),
                            ListTile(
                              title: Text('Rename'),
                            ),
                            ListTile(
                              title: Text('Copy link to the task'),
                            ),
                            ListTile(
                              title: Text('Abond'),
                            ),
                          ],
                        ),
                      );
                    });
              },
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
              ))
        ],
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Card(
                        child: Container(
                            width: 150,
                            height: 40,
                            child: Center(
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.terrain),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text('Single tasks')
                                ],
                              ),
                            ))),
                    Card(
                        child: Container(
                            width: 150,
                            height: 40,
                            child: Center(
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.assignment),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text('Section')
                                ],
                              ),
                            ))),
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                ),
                Row(
                  children: <Widget>[
                    Card(
                        child: Container(
                            width: 150,
                            height: 40,
                            child: Center(
                              child: Row(
                                children: <Widget>[
                                  CircleAvatar(
                                    backgroundColor: Colors.amber,
                                    radius: 10,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text('You')
                                ],
                              ),
                            ))),
                    Card(
                        child: Container(
                      width: 150,
                      height: 40,
                      child: Center(
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.class_),
                            SizedBox(
                              width: 20,
                            ),
                            Text('Tags')
                          ],
                        ),
                      ),
                    )),
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                ),
                Row(
                  children: <Widget>[
                    Card(
                        child: Container(
                            width: 150,
                            height: 40,
                            child: Center(
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.calendar_today),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text('Due Date')
                                ],
                              ),
                            ))),
                    Card(
                        child: Container(
                            width: 150,
                            height: 40,
                            child: Center(
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.alarm),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text('Remind me')
                                ],
                              ),
                            ))),
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                )
              ],
            ),
          ),
          Comments()
        ],
      ),
    );
  }
}
