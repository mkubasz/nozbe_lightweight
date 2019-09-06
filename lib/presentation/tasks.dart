import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nozbe_lightweight/presentation/task_element.dart';
import 'package:nozbe_lightweight/domain/model/task.dart';
import 'package:nozbe_lightweight/infrastructure/nozbe_api_client.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'dart:convert';
import 'package:nozbe_lightweight/domain/model/task.dart';
import 'description.dart';
class Tasks extends StatefulWidget {
  @override
  _Tasks createState() => _Tasks();
}

class _Tasks extends State<Tasks> {
  Future<List<Task>> tasks;
  NozbeApiClient client = new NozbeApiClient(httpClient: http.Client());
  List data;
  Future<String> getJSONData() async {
    var response = await http.get(
      // Encode the url
        Uri.encodeFull("http://10.0.2.2:8888/v1/buckets/nozbe/collections/tasks/records"),
        // Only accept JSON response
        headers: {'Authorization': 'Basic bTdzNXZmdTByNzhodHNpbzphNmQ4NGExNDBhMDFhNTFjZDU0YWE4ZGNjMjY1ZDBiOTEzMWEzOGYzNGIyNzFiYmIyZDMzZWIyNDk0NWQyY2Fk'});

    // Logs the response body to the console
    print(response.body);

    // To modify the state of the app, use this method
    setState(() {
      // Get the JSON data
      var dataConvertedToJSON = json.decode(response.body);
      // Extract the required part and assign it to the global variable named data
      data = dataConvertedToJSON['data'];
    });

    return "Successfull";
  }

  @override
  void initState() {

    super.initState();
    this.getJSONData();
  }
//  HashMap tasks = new HashMap<int, Task>();
//  Tasks(HashMap<int, Task> _map){
//    tasks = _map;
//  }

  @override
  Widget build(BuildContext context) {

// TODO : this is how it suppose to be loaded...
//    return ListView.builder(
//        padding: const EdgeInsets.all(8.0),
//        itemCount:  data == null ? 0 : data.length,
//        itemBuilder: (BuildContext context, int index) {
//          return Container(
//              height: 50,
//              child: Container(child: TaskElement(tasks[index]))
//          );
//        }
//    );
//
      return ListView.builder(
          itemCount: data == null ? 0 : data.length,
          itemBuilder: (BuildContext context, int index) {
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
                      icon: (data[index]['is_all_day'] ? Icon(Icons.check_circle) : Icon(Icons.check_circle_outline)),
                      color: Colors.red[500],
//                      onPressed: _toggleComplete,
                    ),
                    Column(
                      children: <Widget>[
                        Text(data[index]['name']),
                        Description()
                      ],
                    ),
                    IconButton(
                      icon: (data[index]['is_followed'] ? Icon(Icons.star) : Icon(Icons.star_border)),
//                      icon: (data[index]['is_followed'] ? Icon(Icons.star) : Icon(Icons.star_border)),
//                      onPressed: _toggleFavorite,
                    ),
                  ],),
              ),
            );
      });
  }

}