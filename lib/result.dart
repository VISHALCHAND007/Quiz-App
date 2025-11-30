import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback onRestartPressed;

  const Result(this.totalScore, {super.key, required this.onRestartPressed});

  String get resultPhrase {
    String result;
    if (totalScore <= 8) {
      result = "You are awesome!!";
    } else if (totalScore <= 13) {
      result = "Pretty nice.";
    } else if (totalScore <= 16) {
      result = "Devil's inside.";
    } else {
      result = "You are so bad!!";
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
          OutlinedButton(
            onPressed: onRestartPressed,
            child: Text("Restart", style: TextStyle(color: Colors.green)),
          ),
        ],
      ),
    );
  }
}
