import 'package:flutter/material.dart';
import 'question.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AppState();
  }
  //App({Key? key}) : super(key: key);

}

class AppState extends State<App> {
  //final appBarBackgroudClor = Color(0x000000);
  var index = 0;
  var questions = ["what is ur favorite color?", "what is ur favorite animal?"];
  var button1 = ["Blue", "fish"];
  var button2 = ["Red", "cat"];
  var button3 = ["Green", "dog"];
  void answerQuestion() {
    setState(() {
      if (index == 0) {
        index = 1;
      } else {
        index = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            // backgroundColor: appBarBackgroudClor,
            title: const Center(
                child: Text(
              "the first app i build ndnd ",
            )),
          ),
          body: Column(
            children: <Widget>[
              Question(questions.elementAt(index)),
              RaisedButton(
                child: Text(button1.elementAt(index)),
                onPressed: answerQuestion,
              ),
              RaisedButton(
                child: Text(button2.elementAt(index)),
                onPressed: answerQuestion,
              ),
              RaisedButton(
                child: Text(button3.elementAt(index)),
                onPressed: answerQuestion,
              ),
            ],
          )),
    );
  }
}
