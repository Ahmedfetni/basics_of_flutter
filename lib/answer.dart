import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String theAnswer;
  const Answer(this.selectHandler, this.theAnswer, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ElevatedButton(
      child: Text(theAnswer),
      onPressed: () => selectHandler(),
    ));
  }
}
