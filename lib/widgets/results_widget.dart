import 'package:flutter/material.dart';

class ResultsWidget extends StatelessWidget {
  const ResultsWidget(this.text, {super.key});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
      ),
    );
  }
}
