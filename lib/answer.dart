import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.answerText,this.selectHandler);

  @override
  Widget build(BuildContext context){
    return Container(
      width:double.infinity,
      child: RaisedButton(
        color:Colors.red,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: selectHandler(),
        )
    );
  }
}