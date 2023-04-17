import 'package:flutter/material.dart';
import 'dart:ui';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
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
      {
        'questionText':
            'Who developed the Flutter Framework and continues to maintain it today?',
        'answers': ['Facebook', 'Microsoft', 'Google', 'Oracle']
      },
      {
        'questionText': 'How many types of widgets are there in Flutter?',
        'answers': ['2', '4', '3', '7+']
      },
      {
        'questionText':
            'What element is used as an identifier for components when programming in Flutter?',
        'answers': ['Widgets', 'Keys', 'Elements', 'Serial']
      },
      {
        'questionText':
            'Which programming language is used to build Flutter applications?',
        'answers': ['Kotlin', 'Dart', 'Java', 'Go']
      },
      {
        'questionText':
            'What command would you run to verify your Flutter install and ensure your environment is set up correctly?',
        'answers': [
          'Flutter Run',
          'Flutter Build',
          'Flutter Doctor',
          'Flutter Help'
        ]
      }
    ];
    double width;
    return MaterialApp(
        home: Scaffold(
            // ignore: prefer_const_constructors
            appBar: AppBar(
              title: Text('Quiz App'),
              // actions: Icons.menu,
            ),
            body: Center(
                child: Card(
                    color: Color.fromARGB(255, 149, 226, 227),
                    child: SizedBox(
                      height: 500,
                      width: 300,
                      child: Column(
                        children: [
                          Question(
                            question[_questionIndex]['questionText'].toString(),
                          ),
                          ...(question[_questionIndex]!['answer']
                                  as List<String>)
                              .map((answer) {
                            return Answer(_answerQuestion, answer);
                          }).toList()
                        ],
                      ),
                    )))));
  }
}
