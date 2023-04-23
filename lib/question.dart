import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // const ({ Key? key }) : super(key: key);
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Text(
          questionText,
          style: TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 172, 25, 50),
              fontStyle: FontStyle.italic),
          textAlign: TextAlign.center,
        ));
  }
}
