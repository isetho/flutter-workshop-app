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
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/app_background.png"),
              fit: BoxFit.cover),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(
                    width: 103,
                    height: 94,
                    image: AssetImage("assets/images/flame.png"),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    result,
                    style: const TextStyle(
                        fontSize: 36, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 50),
                  const SizedBox(height: 30),
                  SizedBox(
                    width: 256,
                    height: 67,
                    child: ElevatedButton(
                      child: const Text("Ta quiz på nytt"),
                      style: ElevatedButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 28),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35)),
                          backgroundColor: const Color(0xFF283593),
                          foregroundColor: Colors.white),
                      onPressed: resetHandler,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
