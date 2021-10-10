import 'package:flutter/material.dart';
import 'textResult.dart';

class TextControl extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TextControlState();
  }
}

class _TextControlState extends State<TextControl> {
  String _text = "Klick to change this text!";
  void _resetText() {
    setState(() {
      _text = "Klick to change this text!";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
            style: _text == 'You changed this text!'
                ? ElevatedButton.styleFrom(
                    primary: Colors.redAccent, onPrimary: Colors.white)
                : ElevatedButton.styleFrom(
                    primary: Colors.lightBlue, onPrimary: Colors.white),
            child: _text == 'You changed this text!'
                ? Text('Reset')
                : Text('Cahnge Text'),
            onPressed: () {
              setState(() {
                _text != 'You changed this text!'
                    ? _text = 'You changed this text!'
                    : _resetText();
              });
            }),
        TextResult(_text)
      ],
    );
  }
}
