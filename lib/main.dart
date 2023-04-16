import 'package:flutter/material.dart';
import 'dart:ui';
import './question.dart';
import './answer.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
   MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
   
}
class _MyAppState extends State<MyApp>{
   var _questionIndex = 0;
    void _answerQuestion() {
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
  print(_questionIndex);
    }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var question = [
      'what is your favourite color?' ,
      'what is your favourite Food?',
      'what is your favourite place?'
    ];
    return MaterialApp(
        home: Scaffold(
      // ignore: prefer_const_constructors
      appBar: AppBar(
        title: Text('Quiz App'),
        // actions: Icons.menu,
      ),
      body: Column(
        children: [
          Question(question[_questionIndex]), 
          Answer(_answerQuestion),
          RaisedButton(
            child: Text("Answer 2"),
            onPressed: _answerQuestion//() =>
            //   print("Answer 2 choosen!"),
          ),
          RaisedButton(
            child: Text("Answer 3"),
            onPressed: () {
              print('Answer 3 choosen!');
            },
          ),
        ],
      ),
    ));
  }
}
