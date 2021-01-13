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
        title:  Text("Flutter基础Widget"),
      ),
      body: ZXYHomeContent()
    );
  }
}
class ZXYHomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "早发白帝城 \n[唐] 李白\n 朝辞白帝彩云间，千里江陵一日还。\n 两岸猿声啼不住，轻舟已过万重山",
      textAlign: TextAlign.center,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: 20,
        color: Colors.purple,
      ),

    );
  }
}
