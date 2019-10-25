import 'dart:convert';

import 'package:nozbe_lightweight/domain/LabelType.dart';
import 'package:nozbe_lightweight/domain/Priority.dart';
import 'package:nozbe_lightweight/domain/ProjectId.dart';
import 'package:nozbe_lightweight/domain/Task.dart';
import 'package:nozbe_lightweight/domain/TaskId.dart';
import 'package:nozbe_lightweight/domain/TeamMember.dart';
import 'package:nozbe_lightweight/domain/UserId.dart';
import 'package:nozbe_lightweight/domain/Uuid.dart';
import 'package:http/http.dart' as http;

class TaskRepository {
  final Map<String, String> defaultHeaders =  {
    "API-Version": "93",
    "Authorization": "Basic aGVRN2FEdVB0VlZyT05HNjpmYzNlZWRlYzY3MzRjYTZkNTE0NDM3MzNlZWVlOTcwM2EyYTgwYTdjZWE4MjZkNDkxMTc2MzE4NDc0MmM3ZTc2"
  };
  // TODO change to proper ip of dev-server.
  final url = 'http://localhost:8888/v1/buckets/nozbe/collections/tasks/records';
  Future<List<Task>> get(TeamMember teamMember, ProjectId projectId) async {


//    var response = await http.get(url, headers: defaultHeaders);
//    var data = json.decode(response.body)['data'];
//    List<Task> tasks = [];
//    for (var i=0; i< data.length; i++) {
//      var task = data[i];
//        tasks.add(
//            Task(
//                taskId: TaskId(Uuid(1)),
//                name: task['name'],
//                label: LabelType("PRIORITY"),
//                teamMember: TeamMember(alias: "Bla", userId: UserId()),
//                priority: Priority(enable: true, position: 1))
//        );
//    }
    return [
      Task(
          taskId: TaskId(Uuid(1)),
          name: "Moj task który jest baaardzo dluuuugiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii",
          label: LabelType("Blala"),
          teamMember: TeamMember(alias: "Bla", userId: UserId()),
          priority: Priority(enable: true, position: 1)),
      Task(
          taskId: TaskId(Uuid(2)),
          name: "Moj task1",
          label: LabelType("Blala"),
          teamMember: TeamMember(alias: "Bla", userId: UserId()),
          priority: Priority(enable: true, position: 2)),
      Task(
          taskId: TaskId(Uuid(3)),
          name: "Moj task2",
          label: LabelType("Blala"),
          teamMember: TeamMember(alias: "Bla", userId: UserId()),
          priority: Priority(enable: true, position: 3)),
    ];
//    return tasks;
  }
}
