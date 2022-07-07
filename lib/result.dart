import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetQuiz;

  const Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    String resultText;
    if (resultScore < 8) {
      resultText = "You are innocent";
      return resultText;
    } else if (resultScore < 12) {
      resultText = "You are normal";
      return resultText;
    } else {
      resultText = "You are guilty";
      return resultText;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Center(
          child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          ElevatedButton(
              onPressed: () {
                resetQuiz();
              },
              child: Text('RestartQuiz'))
        ],
      )),
    );
  }
}
