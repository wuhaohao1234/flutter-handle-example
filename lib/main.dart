import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ZXYHomePage(),
    );
  }
}

class ZXYHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("计数器项目"),
      ),
      body: ZXYHomeContent("你好呀，菜逼张程序员"),
    );
  }
}

//Widget是不加 _ :暴露给别人使用，加_自己使用
// State是加_: 状态这个类只是给Widget使用
class ZXYHomeContent extends StatefulWidget {
  final String message;
  ZXYHomeContent(this.message);

  @override
  State<StatefulWidget> createState() {
    return _ZXYHomeContentState();
  }
}

/**
 * 为什么Flutter在设计的时候StatefulWidget的build方法放在State中
 *  1.build出来的Widget是需要依赖State中的变量(状态/数据)
 *  2.在Flutter的运行过程中:
 *    Widget是不断的销毁和创建的
 *    当我们自己的状态发生改变时, 并不希望重新状态一个新的State
 */
class _ZXYHomeContentState extends State<ZXYHomeContent> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _getButtons(),
          Text("当前计数$_counter", style: TextStyle(fontSize: 25),),
          Text("传递的信息:${widget.message}")
        ],
      ),
    );
  }

  Widget _getButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text("+", style: TextStyle(fontSize: 20, color: Colors.white),),
          color: Colors.pink,
          onPressed: () {
            setState(() {
              _counter++;
            });
          },
        ),
        RaisedButton(
            child: Text("-", style: TextStyle(fontSize: 20, color: Colors.white),),
            color: Colors.purple,
            onPressed: () {
              setState(() {
                _counter--;
              });
            }
        ),
      ],
    );
  }
}
