import 'package:first_project/quiz.dart';
import 'package:first_project/result.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State {
  final List<Map<String, Object>> _questions = [
    {
      "question": "What's your favourite color?",
      "answers": [
        {"text": "Red", "score": 8},
        {"text": "Blue", "score": 4},
        {"text": "Violet", "score": 6},
        {"text": "Green", "score": 2},
      ],
    },
    {
      "question": "What's your favourite animal?",
      "answers": [
        {"text": "Lion", "score": 9},
        {"text": "Tiger", "score": 9},
        {"text": "Giraffe", "score": 4},
        {"text": "Rabbit", "score": 2},
      ],
    },
    {
      "question": "What do you want to become?",
      "answers": [
        {"text": "Developer", "score": 5},
        {"text": "IAS", "score": 3},
        {"text": "Engineer", "score": 5},
        {"text": "Nothing", "score": 8},
      ],
    },
  ];
  var _questionInd = 0;
  var _totalScore = 0;

  void onAnsPressed(int score) {
    _totalScore += score;
    setState(() {
      _questionInd++;
    });
  }

  void onRestartPressed() {
    setState(() {
      _questionInd = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home Page", style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.lightBlue,
        ),
        body: _questionInd < _questions.length
            ? Quiz(
                questions: _questions,
                questionInd: _questionInd,
                onAnsPressed: onAnsPressed,
              )
            : Result(_totalScore, onRestartPressed: onRestartPressed),
      ),
    );
  }
}
