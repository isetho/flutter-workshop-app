import 'package:flutter/material.dart';

import 'question.dart';
import 'answer.dart';
import 'theme.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz(
      {required this.questions,
      required this.questionIndex,
      required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/app_background.png"),
              fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Question(questions[questionIndex]["questionText"] as String),
            ...(questions[questionIndex]["answers"]
                    as List<Map<String, Object>>)
                .map((answer) {
              return Answer(() => answerQuestion(answer["score"]),
                  answer["text"] as String);
            }).toList()
          ],
        ),
      ),
    );
  }
}
