import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

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
      "number":"2",
      "color":Colors.yellow,
    },
    {
      "number":"3",
      "color":Colors.blue,
    },
    {
      "number":"4",
      "color":Colors.green,
    },
    {
      "number":"5",
      "color":Colors.pink,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test Title"),
      ),
      //SingleChildScrollView로 묶거나 Scroll기능이 있는 ListView로 만들면 됨.
      body: SingleChildScrollView(
        //크게 2개로 나누기 위해 사용
        child: Column(
          children: [
            //반으로 나눈 것중 위쪽 담당.
            SizedBox(
              //크기 지정함.
              height: MediaQuery.of(context).size.height/2,
              //반에서 또 스크롤 기능 추가.
              child:SingleChildScrollView(
                child: Column(
                children: [  
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    color:Colors.green
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    color:Colors.red
                  ),
                ]
                ),
              ) 
            )
          ,
          SizedBox(
              height: MediaQuery.of(context).size.height/2,
              child:SingleChildScrollView(
                child: Column(
                children: [  
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    color:Colors.green
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    color:Colors.red
                  ),
                ]
                ),
              ) 
            )
          ],
        ),
      )
    );
  }

}
