import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final VoidCallback answertext;
  final String answerText;
  Answers({required this.answertext , required this.answerText});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10.0),
      child: RaisedButton(
          color: Colors.blue, child: Text(answerText), onPressed: answertext),
    );
  }
}
