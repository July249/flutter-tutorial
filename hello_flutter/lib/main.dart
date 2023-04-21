import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // MaterialApp is a convenience widget that wraps a number of widgets
    // CupertinoApp is a convenience widget that wraps a number of widgets
    return MaterialApp(
      // home: Text('Hello World!'),
      // Scaffold is a layout for the major Material Components.
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello Flutter!'),
        ),
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
