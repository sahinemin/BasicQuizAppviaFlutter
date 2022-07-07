import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> _questions;
  final Function _answerQuestion;
  final int _questionIndex;
  Quiz(this._questions, this._answerQuestion, this._questionIndex) {}
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(_questions[_questionIndex]["questionText"]),
        ...(_questions[_questionIndex]['answers'] as List<Map<String, Object>>)
            .map((element) {
          return Answer(
              element['text'], () => _answerQuestion(element["score"]));
        }).toList()
      ],
    );
  }
}
