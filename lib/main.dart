import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  /** build method  */
  Widget build(BuildContext constext) {
    var questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': ['Black', 'Green', 'White', 'Red']
      },
      {
        'questionText': 'What\'s your favourite animal?',
        'answers': ['Rabbit', 'Elephant', 'Lion', 'Horse']
      },
      {
        'questions': 'What\'s your favourite city?',
        'answer': ['Berlin', 'San Francisco', 'Munich', 'Dresden']
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            /* Text(questions.elementAt(2)), */
            Question(questions[_questionIndex]['questionText']
            ),
            (questions[_questionIndex] ['answers'] as List<String>).map((answer)) {
              return Answer(answer);
            })
            /* Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion), */
          ],
        ),
      ),
    );
  }
}
