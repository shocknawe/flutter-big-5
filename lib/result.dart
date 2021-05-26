import 'package:flutter/material.dart';
import './quiz-data.dart';

class Result extends StatelessWidget {
  final List<int> scoreList;
  final Function onPressed;

  Result({this.scoreList, this.onPressed});

  List<Widget> get scoreRows {
    return scoreList
        .asMap()
        .entries
        .map((entry) => Row(
              children: [
                Container(
                  width: 160,
                  padding: EdgeInsets.only(
                    left: 20,
                  ),
                  child: Text('${PersonalityNames[entry.key]}: '),
                ),
                Container(
                  width: 50,
                  child: Text(
                    '${entry.value}/$QUIZ_TOTAL',
                    textAlign: TextAlign.center,
                  ),
                ),
                AbsorbPointer(
                  child: Slider(
                    value: entry.value.toDouble(),
                    min: 0,
                    max: QUIZ_TOTAL.toDouble(),
                    activeColor: PersonalityColors[entry.key],
                    inactiveColor: Colors.grey,
                    onChanged: (e) {},
                  ),
                )
              ],
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.only(top: 30, bottom: 30),
          child: Text(
            'Your results:',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        ...scoreRows,
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(
            top: 30,
            left: 10,
            right: 10,
          ),
          child: RaisedButton(
            color: Colors.blue,
            textColor: Colors.white,
            padding: EdgeInsets.all(10),
            child: Text('Try again'),
            onPressed: onPressed,
          ),
        ),
      ],
    );
  }
}
