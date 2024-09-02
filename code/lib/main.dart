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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test Title"),
      ),
      //SingleChildScrollView로 묶거나 Scroll기능이 있는 ListView로 만들면 됨.
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height:MediaQuery.of(context).size.height,
            color: Colors.black26,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              color: Colors.brown,
            )
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: const EdgeInsets.only(left:40, bottom:150),
              width:100,
              height: 100,
              color:Colors.amber
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              margin:const EdgeInsets.only(bottom: 200),
              width: 200,
              height: 100,
              color:Colors.lightBlue,
            ),
          )
        ],
      )
    );
  }

}
