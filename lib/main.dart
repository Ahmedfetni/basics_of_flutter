import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);
  //final appBarBackgroudClor = Color(0x000000);
  void answerQuestion() => print("we got ur answer");
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            // backgroundColor: appBarBackgroudClor,
            title: const Center(child: Text("the first app i build ndnd ")),
          ),
          body: Column(
            children: <Widget>[
              const Text("what is ur favorite color"),
              RaisedButton(
                child: Text("Blue"),
                onPressed: answerQuestion,
              ),
              RaisedButton(
                child: Text("Red"),
                onPressed: () => print("he said red"),
              ),
              RaisedButton(
                child: const Text("Green"),
                onPressed: answerQuestion,
              ),
            ],
          )),
    );
  }
}
