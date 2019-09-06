import 'package:flutter/material.dart';
import 'package:nozbe_lightweight/presentation/app.dart';
import 'dart:io' show Platform;
import 'package:flutter/foundation.dart';
void main() {
//   To linux GUI
  debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nozbe Lightweight',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AppPage(),
    );
  }
}
