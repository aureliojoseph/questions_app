import 'package:flutter/material.dart';
import 'data/questions_data.dart';
import 'widgets/questions_form_widget.dart';
import 'widgets/results_widget.dart';

main() {
  return runApp(QuestionsApp());
}

class QuestionsAppState extends State<QuestionsApp> {
  var _selectedAnswer = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    if (isQuestionAvailable) {
      setState(() {
        _selectedAnswer++;
        _totalScore += score;
      });
    }
  }

  void _resetQuestionsForm() {
    setState(() {
      _selectedAnswer = 0;
      _totalScore = 0;
    });
  }

  bool get isQuestionAvailable {
    return _selectedAnswer < questionsData.length;
  }

  @override
  Widget build(BuildContext context) {
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
        body:
            isQuestionAvailable
                ? QuestionsFormWidget(
                  answerQuestion: _answerQuestion,
                  questionsData: questionsData,
                  selectedAnswer: _selectedAnswer,
                )
                : ResultsWidget(_totalScore, _resetQuestionsForm),
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
