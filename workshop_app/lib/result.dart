import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final VoidCallback resetHandler;

  Result(this.score, this.resetHandler);

  String get result {
    var resultText;

    if (score <= 8) {
      resultText = "You are awesome and innocent!";
    } else if (score <= 12) {
      resultText = "Pretty likeable!";
    } else if (score <= 16) {
      resultText = "You are strange!";
    } else {
      resultText = "You are a bad person";
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            result,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: resetHandler,
            child: Text("Restart Quiz"),
            style: ElevatedButton.styleFrom(
                primary: Colors.blue, onPrimary: Colors.white),
          ),
        ],
      ),
    );
  }
}
