import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nozbe_lightweight/domain/bloc/bloc.dart';
import 'package:nozbe_lightweight/presentation/drawer.dart';
import 'package:nozbe_lightweight/presentation/tasks.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardBloc, DashboardState>(
      builder: (context, state) {
        return Scaffold(
            appBar: AppBar(
              title: Text('Main'),
              actions: <Widget>[
                PopupMenuButton(
                  itemBuilder: (BuildContext context) {
                    return [
                      PopupMenuItem(
                        value: true,
                        child: Text('test'),
                      )
                    ];
                  },
                ),
              ],
            ),
            body: Tasks(),
            drawer: NozbeDrawer());
      },
    );
  }
}
