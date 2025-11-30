import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionInd;
  final Function onAnsPressed;

  const Quiz({
    required this.questions,
    required this.questionInd,
    required this.onAnsPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionInd]["question"] as String),
        ...(questions[questionInd]["answers"] as List<Map<String, Object>>).map(
          (answer) {
            return Answer(
              () => onAnsPressed(answer["score"]),
              answer["text"] as String,
            );
          },
        ),
      ],
    );
  }
}
