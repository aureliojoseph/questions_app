import 'package:flutter/material.dart';
import 'data/questions_data.dart';
import 'widgets/questions_form_widget.dart';
import 'widgets/results_widget.dart';

main() {
  return runApp(QuestionsApp());
}

class QuestionsAppState extends State<QuestionsApp> {
  var selectedAnswer = 0;

  void answerQuestion() {
    if (isQuestionAvailable) {
      setState(() {
        selectedAnswer++;
      });
    }
  }

  bool get isQuestionAvailable {
    return selectedAnswer < questionsData.length;
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
                  answerQuestion: answerQuestion,
                  questionsData: questionsData,
                  selectedAnswer: selectedAnswer,
                )
                : ResultsWidget('You did it!'),
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
