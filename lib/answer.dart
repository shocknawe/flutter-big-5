import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function onPressed;

  Answer(this.answerText, {this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: RaisedButton(
        color: Colors.blue,
        child: Text(answerText),
        onPressed: onPressed,
      ),
    );
  }
}
