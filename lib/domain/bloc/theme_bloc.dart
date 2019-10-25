import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:nozbe_lightweight/presentation/app.dart';

abstract class ThemeState extends Equatable {
  const ThemeState();

  @override
  List<Object> get props => [];
}

class DefaultTheme extends ThemeState {
  final ThemeData themeData;

  DefaultTheme({this.themeData});

  @override
  List<Object> get props => [themeData];
}

abstract class ThemeEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class SetDefaultThemeEvent extends ThemeEvent {}

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  @override
  ThemeState get initialState => DefaultTheme(
          themeData: ThemeData(
        primarySwatch: Colors.blue,
      ));

  @override
  Stream<ThemeState> mapEventToState(ThemeEvent event) async* {
    if (event is SetDefaultThemeEvent) {
      yield DefaultTheme();
      // preparation data db - fetch - update view
    }
  }
}
