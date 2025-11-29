import 'package:first_project/question.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State {
  final _questions = [
    "What's your favourite color?",
    "What's your favourite animal?",
  ];
  var _questionInd = 0;

  void onAnsPressed() {
    setState(() {
      if (_questionInd < _questions.length - 1) _questionInd++;
    });
    print(_questionInd);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
          backgroundColor: Colors.lightBlue,
        ),
        body: Column(
          children: [
            Question(_questions[_questionInd]),
            ElevatedButton(onPressed: onAnsPressed, child: Text("Answer 1")),
            ElevatedButton(onPressed: onAnsPressed, child: Text("Answer 2")),
            ElevatedButton(onPressed: onAnsPressed, child: Text("Answer 3")),
          ],
        ),
      ),
    );
  }
}
