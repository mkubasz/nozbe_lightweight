import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nozbe_lightweight/domain/Task.dart';
import 'package:nozbe_lightweight/domain/bloc/dashboard_bloc.dart';
import 'package:nozbe_lightweight/presentation/task.dart';

import 'description.dart';

class TaskElement extends StatefulWidget {
  final Task task;
  TaskElement(this.task);

  @override
  State<StatefulWidget> createState() {
    return _TaskElementState();
  }
}

class _TaskElementState extends State<TaskElement> {
  MaterialColor color = Colors.grey;

  @override
  void initState() {
    super.initState();
    this.color = widget.task.priority.enable ? Colors.purple : Colors.grey;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TaskPage()),
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Radio(),
            Column(
              children: <Widget>[
                Text(widget.task.name),
                Description(label: widget.task.label)
              ],
            ),
            IconButton(
              icon: Icon(
                Icons.star,
                color: color,
              ),
              onPressed: () {
                setState(() {
                  widget.task.priority.enable = !widget.task.priority.enable;
                  BlocProvider.of<DashboardBloc>(context)
                      .add(SetTaskPriority(widget.task));
                  this.color =
                      widget.task.priority.enable ? Colors.purple : Colors.grey;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
