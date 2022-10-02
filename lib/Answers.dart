import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
 final VoidCallback selectHandlder;
  final String answer;

  Answers(this.selectHandlder, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: OutlinedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.orange),
              foregroundColor: MaterialStateProperty.all(
                Color.fromRGBO(11, 102, 222, 21),
              )),
          onPressed: selectHandlder,
          child: Text(answer),
        ));
  }
}
