import 'package:flutter/material.dart';
import './main.dart';

class Results extends StatelessWidget {
  final VoidCallback resetHandler;
  Results(this.resetHandler);

  @override
  Widget build(BuildContext context) {
    return Center(child: Column(
      children: [Text('THANK YOU',style: TextStyle(fontWeight:FontWeight.bold),textAlign: TextAlign.center
         ,),
         OutlinedButton(onPressed:resetHandler,
          child: Text('Reset Quiz'))
      ],
    ));
  }
}
