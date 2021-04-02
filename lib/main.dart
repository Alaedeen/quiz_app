import 'package:flutter/material.dart';

main() => runApp(QuizApp());

class QuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return QuizAppState();
  }
}

class QuizAppState extends State<QuizApp> {
  var questionIndex = 0;
  void answerQuestion() {
    setState(() {
      questionIndex++;
    });
    
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'Who is the best player in history',
      'what\'s your favorite animal'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            RaisedButton(child: Text('Answer 1'), onPressed: answerQuestion),
            RaisedButton(child: Text('Answer 1'), onPressed: answerQuestion),
            RaisedButton(child: Text('Answer 1'), onPressed: answerQuestion),
          ],
        ),
      ),
    );
  }
}
