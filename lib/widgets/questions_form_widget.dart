import 'package:flutter/material.dart';
import 'answers_widget.dart';
import 'questions_widget.dart';

class QuestionsFormWidget extends StatelessWidget {
  const QuestionsFormWidget({
    super.key,
    required this.answerQuestion,
    required this.questionsData,
    required this.selectedAnswer,
  });

  final List questionsData;
  final int selectedAnswer;
  final void Function(int) answerQuestion;

  bool get isQuestionAvailable {
    return selectedAnswer < questionsData.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> answers =
        isQuestionAvailable ? questionsData[selectedAnswer]['answers'] : null;

    return Column(
      children: <Widget>[
        QuestionsWidget(questionsData[selectedAnswer]['question'].toString()),
        ...answers.map(
          (answer) => AnswersWidget(
            answer['text'] as String,
            () => answerQuestion(answer['score'] as int),
          ),
        ),
      ],
    );
  }
}
