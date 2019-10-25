import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nozbe_lightweight/presentation/app.dart';
import 'dart:io' show Platform;
import 'package:flutter/foundation.dart';

import 'domain/bloc/bloc.dart';
import 'infrastructure/TaskRepository.dart';

void main() {
//   To linux GUI
// debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<DashboardBloc>(
        builder: (context) => DashboardBloc(taskRepository: TaskRepository())
          ..add(InitializationEvent()),
      ),
      BlocProvider<ThemeBloc>(
        builder: (context) => ThemeBloc(),
      ),
      BlocProvider<SettingsBloc>(
        builder: (context) => SettingsBloc(),
      ),
    ],
    child: App(),
  ));
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        if (state is DefaultTheme) {
          return MaterialApp(
            title: 'Nozbe Lightweight',
            theme: state.themeData,
            home: Dashboard(),
          );
        }
        return MaterialApp();
      },
    );
  }
}
