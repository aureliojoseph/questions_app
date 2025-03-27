import 'package:flutter/material.dart';

class ResultsWidget extends StatelessWidget {
  const ResultsWidget(this.totalScore, {super.key});
  final int totalScore;

  String get resultPhrase {
    String resultText;
    if (totalScore < 20) {
      resultText = 'So young and innocent! 🌟';
    } else if (totalScore < 30) {
      resultText = 'Pretty likeable! 😊';
    } else if (totalScore < 40) {
      resultText = 'You are... strange?! 🤔';
    } else {
      resultText = 'Maybe try new things?! 🌈';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          Text(
            'Your total score is: $totalScore',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.indigo.shade600,
            ),
          ),
        ],
      ),
    );
  }
}
