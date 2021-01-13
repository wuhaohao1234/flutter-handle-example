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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Checkbox(
                      value: true, onChanged: (value) => print("Hello World")),
                  Text(
                    "同意协议",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            )));
  }
}
