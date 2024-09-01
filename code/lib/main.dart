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
        primarySwatch: Colors.blue,
        //Materia3 기본 테마로 고정되어 있기 때문에, 이걸 false해줘야 꾸미기가 적용됨.
        useMaterial3: false,
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
      //crossAxisCount => 한행에 존재할 수 있는 값의 수, crossAxisSpacing: gap-x, mainAxisSpacing: gap-y
      body: GridView(
        scrollDirection: Axis.horizontal,
        gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 15.0,mainAxisSpacing: 12.0),
      children: [
        postContainer(text:'1'),
        postContainer(text:'2'),
        postContainer(text:'3'),
        postContainer(text:'4'),
      ],
      )
    );
  }

  Container postContainer({String text=""}) {
    return Container(
        height: 200,
        color:Colors.amber,
        //Text Center로 보내는 함수
        child: Center(child: Text(text)),
      );
  }
}
