import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('title'),
        ),
        body: Center(
          child: Text(
            'data',
            textDirection: TextDirection.ltr,
            style: TextStyle(color: Colors.blue, fontSize: 30),
          ),
        ),
    ));
  }
}
