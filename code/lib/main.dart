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
      "title":"Sample Title",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Test Title"),
      ),
      
      body: ListView(
        //가로 스크롤 가능.
        //scrollDirection: Axis.horizontal,
        children: [
         postContainer(title:'title1',color:Colors.red),
         postContainer(title:'title2'),
         postContainer(title:'title3'),
         postContainer(title:'title4'),
         postContainer(title:'title5'),
        ]
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