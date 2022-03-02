import 'package:flutter/material.dart';
import './questions.dart';
import './answer.dart';

class Test extends StatelessWidget {
  final List<Map<String, Object>> question;
  final int questionIndex;
  final Function answerQuestions;
  Test(
      {required this.question,
      required this.questionIndex,
      required this.answerQuestions,
      });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions: question[questionIndex]['questionText'].toString(),
        ),
        ...(question[questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
          return Answers(answertext: () =>  answerQuestions(answer['score']), answerText: answer['text'] as String);
        }).toList()
      ],
    );
  }
}
