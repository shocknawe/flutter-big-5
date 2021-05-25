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

class _QuestionKey {
  String question;
  List<String> answerList;

  _QuestionKey({this.question, this.answerList});
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var questions = [
    _QuestionKey(
      question: 'What\'s your favorite color?',
      answerList: ['Black', 'Red', 'Green', 'White'],
    ),
    _QuestionKey(
      question: 'What\'s your favorite animal?',
      answerList: ['Rabbit', 'Snake', 'Elephant', 'Lion'],
    ),
    _QuestionKey(
      question: 'Who\'s your favorite instructor?',
      answerList: ['Max', 'Max', 'Max', 'Max'],
    ),
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
              questions[_questionIndex].question
            ),
            ...questions[_questionIndex].answerList.map((answer) {
              return Answer(
                answer,
                onPressed: _answerQuestion,
              );
            }).toList()
          ],
        ),
      ),
    );
  }
}
