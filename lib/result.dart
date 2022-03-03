import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "U made it ",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: const Color(0xff1983B4 ),
            fontSize: 40
          ),
        ),
      ),
    );
  }
}
