import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Change Text by Pressing Button"),
            ),
            body: Center(child: TextChanger())));
  }
}

class TextChanger extends StatefulWidget {
  @override
  _TextChangerState createState() => _TextChangerState();
}

class _TextChangerState extends State<TextChanger> {
  String _textStore = "Hello there!";

  _textChanger() {
    setState(() {
      _textStore = "Bye Bye";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              child: Text("$_textStore",
                style: TextStyle(fontSize: 22),
              ),
            ),
            RaisedButton(
              onPressed: () => _textChanger(),
              child: Text("Click Here"),
            ),
          ],
        ),
      ),
    );
  }
}
