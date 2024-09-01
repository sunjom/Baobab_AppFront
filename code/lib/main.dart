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
        //배경색 주는 방법.
        width: MediaQuery.of(context).size.width,
        height:MediaQuery.of(context).size.height,
        color:Colors.yellow,
        //Stack을 사용하면 Container들끼리 겹침 => Position을 정해줘야 함.
        child: Stack(
          children: [
            Container(
              width: 200,
              height:200,
              color:Colors.blue,
            ),
            Container(
              width: 200,
              height:200,
              margin: const EdgeInsets.only(top:50, left:50),
              color:Colors.red,
            )
          ],
        ),
      )
    );
  }
}