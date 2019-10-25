import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:nozbe_lightweight/presentation/app.dart';

abstract class SettingsState extends Equatable {
  @override
  List<Object> get props => [];
}

class DefaultSettings extends SettingsState {}

abstract class SettingsEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class SetDefaultSettingsEvent extends SettingsEvent {}

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  @override
  SettingsState get initialState => DefaultSettings();

  @override
  Stream<SettingsState> mapEventToState(SettingsEvent event) async* {
    if (event is SetDefaultSettingsEvent) {
      yield DefaultSettings();
      // preparation data db - fetch - update view
    }
  }
}
