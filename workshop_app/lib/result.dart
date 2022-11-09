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
      resultText = "Yo what?";
    }

    return resultText;
  }

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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // TODO: Your styling here
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
