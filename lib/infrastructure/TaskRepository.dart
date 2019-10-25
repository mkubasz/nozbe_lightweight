import 'package:nozbe_lightweight/domain/LabelType.dart';
import 'package:nozbe_lightweight/domain/Priority.dart';
import 'package:nozbe_lightweight/domain/ProjectId.dart';
import 'package:nozbe_lightweight/domain/Task.dart';
import 'package:nozbe_lightweight/domain/TaskId.dart';
import 'package:nozbe_lightweight/domain/TeamMember.dart';
import 'package:nozbe_lightweight/domain/UserId.dart';
import 'package:nozbe_lightweight/domain/Uuid.dart';

class TaskRepository {
  Future<List<Task>> get(TeamMember teamMember, ProjectId projectId) async {
    List<Task> tasks = [
      Task(
          taskId: TaskId(Uuid(1)),
          name: "Moj task",
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
    return tasks;
  }
}
