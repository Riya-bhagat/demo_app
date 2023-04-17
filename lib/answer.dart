import 'package:flutter/material.dart';
class Answer extends StatelessWidget {
final VoidCallback selectHandler;
final String answerText;

Answer(this.selectHandler , this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // color: Colors.blue,
      child: ElevatedButton(
            child: Text(answerText),
            onPressed: selectHandler,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 50, 195, 159)),
            ),
          ),
      );
  }
}