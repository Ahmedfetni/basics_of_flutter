import 'package:basics_of_flutter/result.dart';
import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';


void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }
  //App({Key? key}) : super(key: key);

}

class AppState extends State<App> {
  //final appBarBackgroudClor = Color(0x000000);
  var index = 0;
  //var questions = ["what is ur favorite color?", "what is ur favorite animal?"];
  //var button1 = ["Blue", "fish"];
  //var button2 = ["Red", "cat"];
  //var button3 = ["Green", "dog"];

  void answerQuestion() {
    setState(() {
      index++;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> questions = [
      {
        "question": "what is ur favorite color?",
        "answers": ["Blue", "Red", "Black", "Green"],
      },
      {
        "question": "what is ur favorite animal?",
        "answers": ["Snake", "Fish", "Cat", "Dog"],
      },
    ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        // backgroundColor: appBarBackgroudClor,
        title: const Center(
            child: Text(
          "A quiz Game",
        )),
      ),
      body:index < questions.length ? Column(
        children: <Widget>[
          question(
            questions[index]['question'],
          ),
          ...(questions[index]["answers"] as List<String>).map((answer) {
            return Answer(answerQuestion, answer);
          }).toList(),
        ],
      ):Result(),
    ));
  }
}
