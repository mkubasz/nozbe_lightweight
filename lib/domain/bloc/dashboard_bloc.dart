import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:nozbe_lightweight/infrastructure/TaskRepository.dart';
import 'package:nozbe_lightweight/presentation/app.dart';

import '../Task.dart';

abstract class DashboardState extends Equatable {
  @override
  List<Object> get props => [];
}

class InitializeState extends DashboardState {
  final List<Task> tasks;
  InitializeState(this.tasks);

  @override
  List<Object> get props => [tasks];
}

abstract class DashboardEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class InitializationEvent extends DashboardEvent {}

class SetTaskPriority extends DashboardEvent {
  final Task task;

  SetTaskPriority(this.task);
}

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  TaskRepository taskRepository;

  DashboardBloc({this.taskRepository});

  @override
  DashboardState get initialState => InitializeState([]);

  @override
  Stream<DashboardState> mapEventToState(DashboardEvent event) async* {
    if (event is InitializationEvent) {
      var tasks = await taskRepository.get(null, null);
      yield InitializeState(tasks);
      // preparation data db - fetch - update view
    }
    if (event is SetTaskPriority) {
      var tasks = await taskRepository.get(null, null);
      tasks = tasks.map((task) {
        if (task == event.task) {
          task.priority.enable = event.task.priority.enable;
        }
        return task;
      }).toList();
      yield InitializeState(tasks);
      // preparation data db - fetch - update view
    }
  }
}
