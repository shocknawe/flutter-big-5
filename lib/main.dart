import 'dart:math';
import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

// void main () {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  static const questions = [
    'What\'s your favorite color?',
    'What\'s your favorite animal?'
  ];

  void _answerQuestion() {
    setState(() {
      print('answered question');
      _questionIndex = min(questions.length - 1, _questionIndex + 1);
      print('_questionIndex: ' + _questionIndex.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex],
            ),
            Answer(
              'Answer1',
              onPressed: _answerQuestion,
            ),
            Answer(
              'Answer2',
              onPressed: _answerQuestion,
            ),
            Answer(
              'Answer3',
              onPressed: _answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
