import 'package:flutter/material.dart';
import 'data/questions_data.dart';
import 'widgets/question_widget.dart';
import 'widgets/answer_widget.dart';

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
    final questions = questionsData;

    List<String> answers = questions[selectedAnswer].cast()['answers'];

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
            QuestionWidget(questions[selectedAnswer]['question'].toString()),
            ...answers.map((answer) => AnswerWidget(answer, answerQuestion)),
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
