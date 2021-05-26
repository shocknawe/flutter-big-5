import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final Map questionData;
  final answers = [
    {
      'text': 'Very Inaccurate',
      'value': 1,
      'negativeValue': 5,
      'color': 0xff2196f3,
    },
    {
      'text': 'Moderately Inaccurate',
      'value': 2,
      'negativeValue': 4,
      'color': 0xff1e88e5,
    },
    {
      'text': 'Neither Accurate Nor Inaccurate',
      'value': 3,
      'negativeValue': 3,
      'color': 0xff1976d2,
    },
    {
      'text': 'Moderately Accurate',
      'value': 4,
      'negativeValue': 2,
      'color': 0xff1565c0,
    },
    {
      'text': 'Very Accurate',
      'value': 5,
      'negativeValue': 1,
      'color': 0xff0d47a1,
    },
  ];
  final Function onPressed;

  Quiz({
    @required this.questionData,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questionData['question']),
        ...answers
            .map((answer) => Answer(
                  answer['text'],
                  color: Color(answer['color']),
                  onPressed: () {
                    onPressed(
                      personality: questionData['score'],
                      value: questionData['scale'] == 1 ? answer['value'] : answer['negativeValue'],
                    );
                  },
                ))
            .toList(),
      ],
    );
  }
}
