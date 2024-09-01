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

  final postList=[
    {
      "title":"Sample Title1",
      "color":Colors.red,
    },
    {
      "title":"Sample Title2",
      "color":Colors.blue,
    },
    {
      "title":"Sample Title3",
      "color":Colors.green,
    },
    {
      "title":"Sample Title4",
      "color":Colors.yellow,
    },
    {
      "title":"Sample Title5",
      "color":Colors.pink,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Test Title"),
      ),
      //ListView.builder로 객체값을 이용할 수 있음.
      body: ListView.builder(
        itemCount: postList.length,
        itemBuilder: (BuildContext con, int index){
          return postContainer(
            //as로 type확정 
            title: postList[index]["title"] as String,
            color: postList[index]["color"] as Color,
          );
        },
      )
    );
  }
  Widget postContainer({String title='', Color color=Colors.blue}){
      return Column(
        children: [
          Container(
            padding:const EdgeInsets.all(10),
            child:Text(title,
              style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),),
          ),
          Container(
            width:MediaQuery.of(context).size.width,
            height: 200,
            color:color
          )]
      );
    }
}