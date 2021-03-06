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
  final questions = const [
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
  var _questionIndex = 0;

  void _answerQuestion() {
    //var aBool = true

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);

    if (_questionIndex < questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  /** build method  */
  Widget build(BuildContext constext) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  Question(
                    questions[_questionIndex]['questionText'],
                  ),
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestion, answer);
                  }).toList()
                  /* Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion), */
                ],
              )
            : Center(
                child: Text('You did it!'),
              ),
      ),
    );
  }
}
