import 'package:flutter/material.dart';

class question extends StatelessWidget {
  final String questionText;

  question(this.questionText,  {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(
          fontSize: 20,
          color: Color.fromARGB(200, 170, 100, 180),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
