import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  late final int resultScore;
  final Function() resetHandler;
  Result(this.resultScore, this.resetHandler);
  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are just Awesome!';
    } else if (resultScore <= 12) {
      resultText = 'Nice';
    } else if (resultScore <= 16) {
      resultText = 'You are Strange';
    } else {
      resultText = 'It is Bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: resetHandler,
            child: const Text("Restart"),
          )
        ],
      ),
    );
  }
}
