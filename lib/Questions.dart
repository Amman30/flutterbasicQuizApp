import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  String questionText;
  Questions(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
         width:double.infinity,
         margin: EdgeInsets.all(23),
      child:Text(
      questionText,
      style: TextStyle(fontSize: 32,),
      textAlign: TextAlign.center,
    ),);
  }
}
