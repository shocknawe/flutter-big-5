import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';
import './quiz-data.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _isFinished = false;
  var _scoreList = List.filled(5, 0);

  void _answerQuestion({Personality personality, int value}) {
    setState(() {
      _scoreList[personality.index] += value;
      _questionIndex = _questionIndex + 1;
      if (_questionIndex == QUIZ_DATA.length) {
        _isFinished = true;
      }
    });
  }

  void _resetQuiz() {
    setState(() {
      _scoreList = List.filled(5, 0);
      _questionIndex = 0;
      _isFinished = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Big Five - Personality Test'),
        ),
        body: !_isFinished
            ? Quiz(
                questionData: QUIZ_DATA[_questionIndex],
                onPressed: _answerQuestion,
              )
            : Result(
                scoreList: _scoreList,
                onPressed: _resetQuiz,
              ),
      ),
    );
  }
}
