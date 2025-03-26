import 'package:flutter/material.dart';

main() {
  return runApp(QuestionsApp());
}

class QuestionsApp extends StatelessWidget {
  const QuestionsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Text('Hello, Flutter!'));
  }
}
