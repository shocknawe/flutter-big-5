import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function onPressed;
  final Color color;

  Answer(this.answerText, {this.onPressed, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: RaisedButton(
        color: color,
        textColor: Colors.white,
        padding: EdgeInsets.all(10),
        child: Text(answerText),
        onPressed: onPressed,
      ),
    );
  }
}
