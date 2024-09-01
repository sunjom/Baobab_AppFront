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

  final postList = [
    {
      "number":"1",
      "color":Colors.red,
    },
    {
      "number":"1",
      "color":Colors.yellow,
    },
    {
      "number":"2",
      "color":Colors.blue,
    },
    {
      "number":"3",
      "color":Colors.green,
    },
    {
      "number":"4",
      "color":Colors.pink,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Test Title"),
      ),
      //crossAxisCount => 한행에 존재할 수 있는 값의 수, crossAxisSpacing: gap-x, mainAxisSpacing: gap-y
      body: GridView.builder(gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
      itemCount: postList.length, itemBuilder: (BuildContext con,int index){
        return postContainer(number:postList[index]["number"] as String, color:postList[index]['color']as Color);
      }),
    );
  }

  Container postContainer({String number="123", Color color=Colors.black}) {
    return Container(
        height: 200,
        color:color,
        //Text Center로 보내는 함수
        child: Center(child: Text("Box $number")),
      );
  }
}
