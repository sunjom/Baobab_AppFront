import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
//StatelessWidget : 상태가 변하지 않는 위젯
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

//StatefulWidget : 상태가 변하는 경우
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Test Title"),
      ),
      body: Container(
        alignment: Alignment.topLeft,
        //Column or Row, Row를 두개 쓰고싶다면 Ctrl + .
        child: Column(
          // mainAxisAlignment => justify-content
          //crossAxisAlignment => align-items
          // Row => 가로축 기준 가운데
          // Column => 세로축 기준 가운데.
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: MediaQuery.of(context).size.height/2,
                  height:200,
                  color: Colors.blue,
                ),
                Container(
                  width: MediaQuery.of(context).size.height/2,
                  height:200,
                  color: Colors.red,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  //MediaQuery.of(context).size 앱 화면 크기
                  //MediaQuery.of(context).size.width(or height)
                  width: MediaQuery.of(context).size.width/2,
                  height:200,
                  color: Colors.blue,
                ),
                Container(
                  width: MediaQuery.of(context).size.width/2,
                  height:200,
                  color: Colors.red,
                )
              ],
            )
          ],
        )
      )
    );
  }
}