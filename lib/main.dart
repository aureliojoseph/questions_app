import 'package:flutter/material.dart';

main() {
  return runApp(QuestionsApp());
}

class QuestionsApp extends StatelessWidget {
  const QuestionsApp({super.key});

  @override
  Widget build(BuildContext context) {
    final questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Questions')),
        body: Column(
          children: <Widget>[
            Text(questions[0]),
            ElevatedButton(onPressed: null, child: Text('Answer 1')),
            ElevatedButton(onPressed: null, child: Text('Answer 2')),
            ElevatedButton(onPressed: null, child: Text('Answer 3')),
          ],
        ),
      ),
    );
  }
}
