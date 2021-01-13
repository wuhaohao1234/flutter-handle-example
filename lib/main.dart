import 'package:flutter/material.dart';

// 等价于main() => runApp(MyApp()); 箭头函数的使用
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      //对于主题颜色设置
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}


/**
 * StatefulWidget: 分为两个类
 * 1.集成自StatefulWidget的类【作用：1. 有一个必须实现的方法，如下：createState() 2. 可以接收父widget传过来的数据】
 * 2.对应着有state这个类【作用是保存状态】
 */
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

//下一篇博客会着重讲述StatefulWidget和StatelessWidget以及state
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  //实现++功能
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        //点击右下角的按钮，实现自加
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
