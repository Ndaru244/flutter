import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultPharse {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome!';
    } else if (resultScore <= 12) {
      resultText = 'Well played!!';
    } else if (resultScore <= 16) {
      resultText = 'You are ... nevermind';
    } else {
      resultText = 'What the f*ck!!!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 20),
      child: Column(
        children: <Widget>[
          Text(
            resultPharse,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          TextButton(
            onPressed: resetHandler,
            style: TextButton.styleFrom(primary: Colors.blueAccent),
            child: Text(
              'Restart Quiz!',
            ),
          ),
          OutlinedButton(
              style: OutlinedButton.styleFrom(
                  primary: Colors.orange,
                  side: BorderSide(color: Colors.orange)),
              onPressed: resetHandler,
              child: Text('Test Outline Button'))
        ],
      ),
      /* child: Text(
        resultPharse,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
      ), */
    );
  }
}
