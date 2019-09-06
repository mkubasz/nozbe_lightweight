import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NozbeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          Container(
            height: 70,
            child: DrawerHeader(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.amber,
                        radius: 15,
                      ),
                      SizedBox(width: 10,),
                      Text('Mateusz Bartek', style: TextStyle(color: Colors.white, fontSize: 16),),
                    ],
                  ),
                ),
                IconButton(icon: Icon(Icons.more_vert, color: Colors.white,))
              ],
            ),
            decoration: BoxDecoration(
                color: Colors.blue
            ),
          ),),
          ListTile(
            title: Row(children: <Widget>[
              Icon(Icons.devices_other, color: Colors.black,),
              SizedBox(width: 10,),
              Text('Dev Tools')
            ],),
          ),
          ListTile(
            title: Row(children: <Widget>[
              Icon(Icons.grade, color: Colors.black,),
              SizedBox(width: 10,),
              Text('Priority')
            ],),
          ),
          ListTile(
            title: Row(children: <Widget>[
              Icon(Icons.inbox, color: Colors.black,),
              SizedBox(width: 10,),
              Text('Incoming')
            ],),
          ),
          ListTile(
            title: Row(children: <Widget>[
              Icon(Icons.terrain, color: Colors.black,),
              SizedBox(width: 10,),
              Text('Single tasks')
            ],),
          ),
          ListTile(
            title: Row(children: <Widget>[
              Icon(Icons.search, color: Colors.black,),
              SizedBox(width: 10,),
              Text('Search')
            ],),
          ),
          ListTile(
            title: Row(children: <Widget>[
              Text('FAVORITES', style: TextStyle(fontSize: 16),)
            ],),
          ),
          ListTile(
            title: Row(children: <Widget>[
              Text('PROJECTS', style: TextStyle(fontSize: 16),)
            ],),
          ),
          ListTile(
            title: Row(children: <Widget>[
              Text('TAGS', style: TextStyle(fontSize: 16),)
            ],),
          ),
          ListTile(
            title: Row(children: <Widget>[
              Text('SMART LISTS', style: TextStyle(fontSize: 16),)
            ],),
          ),
        ],
      ),
    );
  }

}