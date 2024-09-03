import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Test1",
      theme: ThemeData(
        primarySwatch: Colors.red,
        useMaterial3: false,
      ),
      home: StartApp(),
    );
  }
}

class StartApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("YES"),
        centerTitle: true,
        elevation: 0.0,
        //leading 아이콘 버튼이나 간단한 위젯을 왼쪽에 배치할 때
        leading:IconButton(
          icon: Icon(Icons.menu),
          onPressed: () => print("HIIIIIIII"),
        ),
        //복수의 아이콘 버튼 등을 오른쪽에 배치할 때.
        actions: [
          IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: () => print("Cart"),
          ),
          IconButton(
          icon: Icon(Icons.search),
          onPressed: () => print("Search"),
          ),
        ],
      ),
    );
  }
}