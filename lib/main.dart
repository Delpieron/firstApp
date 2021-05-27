import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': '1 question',
      'answers': [
        {'text': 'black', 'score': 9},
        {'text': 'red', 'score': 7},
        {'text': 'orange', 'score': 4},
        {'text': 'white', 'score': 1},
      ],
    },
    {
      'questionText': '2 question',
      'answers': [
        {'text': 'black2', 'score': 9},
        {'text': 'red2', 'score': 7},
        {'text': 'orange2', 'score': 4},
        {'text': 'white2', 'score': 1},
      ],
    },
    {
      'questionText': '3 question',
      'answers': [
        {'text': 'black3', 'score': 9},
        {'text': 'red3', 'score': 7},
        {'text': 'orange3', 'score': 4},
        {'text': 'white3', 'score': 1},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My app'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                _questions,
                _answerQuestion,
                _questionIndex,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
