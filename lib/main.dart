

import 'package:flutter/material.dart';
import './Test.dart';
//import 'package:quiz_app/answer.dart';

import 'last.dart';
//import 'package:quiz_app/questions.dart';

void main(List<String> args) {
  runApp(const quizApp());
}

// ignore: camel_case_types
class quizApp extends StatefulWidget {
  const quizApp({Key? key}) : super(key: key);

  @override
  _quizAppState createState() => _quizAppState();
}

class _quizAppState extends State<quizApp> {
  final _question = [
    {
      'questionText': 'What is your favourite Colour?',
      'answers': [
        {'text': 'White', 'score': 9},
        {'text': 'Blue', 'score': 7},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 6},
      ],
    },
    {
      'questionText': 'What is your favourite animal?',
      'answers': [
        {'text': 'Cat', 'score': 7},
        {'text': 'Tiger', 'score': 6},
        {'text': 'Lion', 'score': 6},
        {'text': 'Rabbit', 'score': 8},
      ],
    },
    {
      'questionText': 'WHat is your favourite food?',
      'answers': [
        {'text': 'spicy', 'score': 5},
        {'text': 'sour', 'score': 4},
        {'text': 'sweets', 'score': 8},
        {'text': 'asian', 'score': 7},
      ],
    }
  ];
  var _questionIndex = 0;
  var  _totalScore = 0 ;
  void _answer(int score) {
    _totalScore+=score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'quizApp',
      home: Scaffold(
        appBar: AppBar(
          title: Text('quizz'),
        ),
        body: _questionIndex < _question.length
            ? Test(
                question: _question,
                answerQuestions: _answer,
                questionIndex: _questionIndex,
              )
            : Result(),
      ),
    );
  }
} 
