import 'package:flutter/material.dart';

class TextResult extends StatelessWidget {
  String text = 'tae';
  TextResult(this.text);
  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
