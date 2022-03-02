import 'package:flutter/material.dart';
class Question extends StatelessWidget {
  const Question({this.questions});
  final questions;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Text(
        questions,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}