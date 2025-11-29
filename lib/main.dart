import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var questions = [
    "What's your favourite color?",
    "What's your favourite animal?",
  ];
  var questionInd = 0;

  void onAnsPressed() {
    questionInd++;
    print(questionInd);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Home Page")),
        body: Column(
          children: [
            Text(questions[0]),
            ElevatedButton(onPressed: onAnsPressed, child: Text("Answer 1")),
            ElevatedButton(onPressed: onAnsPressed, child: Text("Answer 2")),
            ElevatedButton(onPressed: onAnsPressed, child: Text("Answer 3")),
          ],
        ),
      ),
    );
  }
}
