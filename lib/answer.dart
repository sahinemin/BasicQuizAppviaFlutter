import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String _answerText;
  final VoidCallback _selectHandler;

  const Answer(this._answerText, this._selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
          foregroundColor: MaterialStateProperty.all(Colors.white),
        ),
        onPressed: _selectHandler,
        child: Text(_answerText),
      ),
      width: double.infinity,
    );
  }
}
