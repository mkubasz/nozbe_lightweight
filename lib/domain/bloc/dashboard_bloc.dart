import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:nozbe_lightweight/presentation/app.dart';

abstract class DashboardState extends Equatable {
  @override
  List<Object> get props => [];
}

class InitializeState extends DashboardState {}

abstract class DashboardEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class InitializationEvent extends DashboardEvent {}

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  @override
  DashboardState get initialState => InitializeState();

  @override
  Stream<DashboardState> mapEventToState(DashboardEvent event) async* {
    if (event is InitializationEvent) {
      yield InitializeState();
      // preparation data db - fetch - update view
    }
  }
}
