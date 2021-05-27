import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8)
      resultText = 'you are awesome';
    else if (resultScore <= 12)
      resultText = 'likeable';
    else if (resultScore <= 16)
      resultText = 'you are strange';
    else
      resultText = 'upssss';
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
        ),
        FlatButton(onPressed: () => resetHandler, child: Text('Restart'))
      ],
    ));
  }
}
