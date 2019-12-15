import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int total;
  final Function reset;

  Result(this.total, this.reset);

  String get resultPhrase {
    String resultText;
    if (total <= 8) {
      resultText = 'You are Awesome!';
    } else if (total <= 12) {
      resultText = 'You are likable';
    } else if (total <= 16) {
      resultText = 'You are strange';
    } else {
      resultText = 'You are so bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          FlatButton(
            child: Text('Restart the quiz'),
            textColor: Colors.blue,
            onPressed: reset,
          )
        ],
      ),
    );
  }
}
