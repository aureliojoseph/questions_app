// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import './questions.dart';
import './answers.dart';

main() {
  return runApp(QuestionsApp());
}

class QuestionsAppState extends State<QuestionsApp> {
  var selectedAnswer = 0;

  void answerQuestion() {
    setState(() {
      selectedAnswer++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final questions = [
      {
        'question': 'What\'s your favorite color?',
        'answers': ['Black', 'Red', 'Green', 'White'],
      },
      {
        'question': 'What\'s your favorite animal?',
        'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
      },
      {
        'question': 'What\'s your favorite food?',
        'answers': ['Pizza', 'Pasta', 'Burger', 'Noodles'],
      },
      {
        'question': 'What\'s your favorite programming language?',
        'answers': ['Python', 'Java', 'Dart', 'JavaScript'],
      },
    ];

    List<Widget> answers = [];

    for (String answer in questions[selectedAnswer].cast()['answers']) {
      answers.add(Answers(answer, answerQuestion));
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Questions'),
          backgroundColor: Colors.black87,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            Questions(questions[selectedAnswer]['question'].toString()),
            ...answers,
          ],
        ),
      ),
    );
  }
}

class QuestionsApp extends StatefulWidget {
  const QuestionsApp({super.key});

  @override
  QuestionsAppState createState() {
    return QuestionsAppState();
  }
}
