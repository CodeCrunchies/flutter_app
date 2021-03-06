import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var questionIndex = 0;

  void answerQuestion() {
    questionIndex = questionIndex + 1;
   /*  print('Answer chosen'); */
  }

  @override
  /** build method  */
  Widget build(BuildContext constext) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favourite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            /* Text(questions.elementAt(2)), */
            Text(questions[0]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion, /**Name function */
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Answer 2 chosen!'), /** */
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () {
                //...anonymous function
                print('Answer 3 chosen!');
              },
            ),
          ],
        ),
      ),
    );
  }
}
