import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 290,
      height: 50,
      margin: const EdgeInsets.all(10),
      child: ElevatedButton(
        child: Text(answerText, textAlign: TextAlign.center),
        style: ElevatedButton.styleFrom(
            textStyle: const TextStyle(fontSize: 24),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
            backgroundColor: const Color(0xFF3076B1),
            foregroundColor: Colors.white),
        onPressed: selectHandler,
      ),
    );
  }
}
