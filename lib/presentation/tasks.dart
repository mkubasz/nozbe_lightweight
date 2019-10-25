import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nozbe_lightweight/domain/Task.dart';
import 'package:nozbe_lightweight/domain/bloc/bloc.dart';
import 'package:nozbe_lightweight/presentation/task_element.dart';

class Tasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardBloc, DashboardState>(
      builder: (context, state) => ListView.builder(
          padding: const EdgeInsets.all(8.0),
          itemCount: (state as InitializeState).tasks.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
                height: 50,
                child: Container(
                    child:
                        TaskElement((state as InitializeState).tasks[index])));
          }),
    );
  }
}
