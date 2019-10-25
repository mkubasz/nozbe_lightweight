import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nozbe_lightweight/domain/LabelType.dart';

class Description extends StatelessWidget {
  final LabelType label;

  const Description({Key key, this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      this.label.projectName,
      style: TextStyle(color: Colors.grey),
    );
  }
}
