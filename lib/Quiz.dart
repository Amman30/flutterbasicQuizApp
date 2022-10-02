import 'package:flutter/material.dart';
import './Questions.dart';
import './Answers.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final VoidCallback answerquestion;
  final int questionIndex;

  Quiz({
    required this.questions,
    required this.answerquestion,
    required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return (Column(children: [
      Questions(questions[questionIndex]['question'] as String),
      ...(questions[questionIndex]['answers'] as List<String>).map((answer) {
        return Answers(answerquestion, answer );
      }).toList(),
    ]));
  }
}
