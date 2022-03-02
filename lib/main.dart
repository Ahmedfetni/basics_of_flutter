import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);
  //final appBarBackgroudClor = Color(0x000000);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          // backgroundColor: appBarBackgroudClor,
          title: const Center(child: Text("the first app i build ndnd ")),
        ),
        body: const Center(
            child: Text("this is my default text that i'll put right here")),
      ),
    );
  }
}
