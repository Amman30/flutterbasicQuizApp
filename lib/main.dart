// import 'dart:html';

import 'package:flutter/material.dart';
import 'Questions.dart';
import './Answers.dart';
import './Quiz.dart';
import './Results.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppstate();
  }
}

class MyAppstate extends State<MyApp> {
  var questionIndex = 0;

  

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
    });
  }

  void answerquestion() {
    setState(() {
      questionIndex += 1;
    });

    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      {
        'question': 'Who is the First President of USA?',
        'answers': ['JOE BIDEN', 'BARACK OBAMA', 'LINCON', 'George Washington'],
      },
      {
        'question': 'Who is Current PM of INDIA?',
        'answers': ['MODI', 'RAHUL', 'YOGI', 'OMAR']
      },
      {
        'question': 'Who Created Python language?',
        'answers': [
          'Dennis Ritchie',
          'Guido van Rossum',
          'Yukihiro Matsumoto',
          'NOTA'
        ]
      },
      {
        'question': 'Which Company Created DART',
        'answers': ['YAHOO', 'META', 'GOOGLE', 'ALL OF THE ABOVE']
      },
      {
        'question': 'What was the former name of SBI',
        'answers': [
          'INDIAN BANK',
          'INTERNATIONAL BANK OF INDIA',
          'Bank of Calcutta',
          'IMPERIAL BANK OF INDIA'
        ],
      },
      {
        'question': 'Who was the last Tsar of Russia?',
        'answers': [
          'Nicholas II',
          'Onitsuka Tiger',
          'Nicolaus Copernicus',
          'NOTA'
        ]
      },
    ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Quiz App Made By AMMAN'),
        backgroundColor: Color.fromARGB(222, 111, 22, 11),
      ),
      body: questionIndex < question.length
          ? Quiz(
              answerquestion: answerquestion,
              questionIndex: questionIndex,
              questions: question,
            )
          : Results(resetQuiz),
    ));
  }
}
