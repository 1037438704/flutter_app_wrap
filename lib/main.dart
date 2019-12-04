import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeContent(),
    );
  }
}

class HomeContent extends StatelessWidget {
  List<String> _list = [
    '盗墓笔记',
    '鬼吹灯',
    '这个书名是凑的',
    '藏海花',
    '这个书名是凑的',
    '藏海花',
    '沙海',
    '藏海花',
    '这个书名是凑的',
    '藏海花'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("流式布局"),
      ),
      body: Center(
        child: Padding(
            child: Wrap(
              children: _generateList(),
              spacing: 12,
              runSpacing: 13,
              alignment: WrapAlignment.start,
              runAlignment: WrapAlignment.end,
            ),
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0)),
      ),
    );
  }

  List<Widget> _generateList() {
    return _list.map((item) {
      return RaisedButton(
        child: Text(item),
        onPressed: () {
          print(item);
        },
      );
    }).toList();
  }
}
