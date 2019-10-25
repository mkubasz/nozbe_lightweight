import 'package:nozbe_lightweight/domain/LabelType.dart';
import 'package:nozbe_lightweight/domain/Priority.dart';

import 'TaskId.dart';
import 'TeamMember.dart';

class Task {
  TaskId taskId;
  String name;
  LabelType label;
  Priority priority;
  TeamMember teamMember;

  Task({this.taskId, this.name, this.label, this.priority, this.teamMember});

  @override
  bool operator ==(Object other) =>
      other is Task && taskId.id.id == other.taskId.id.id;

  @override
  int get hashCode => taskId.id.id.hashCode;
}
