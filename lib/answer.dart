import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback onPressHandler;

  const Answer(this.onPressHandler, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(8),
      child: ElevatedButton(
        onPressed: onPressHandler,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.lightBlueAccent,
        ),
        child: Text(
          "Answer",
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }
}
