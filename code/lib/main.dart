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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
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
        title:const Text("Test"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text("Drawer Headr"),
            ),
            ListTile(
              title: Text("Menu 1"),
            ),
          ],
        )),

      body:const Center(
        child:Text("Hello Worlds"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () => print("Clicked"),child:const Icon(Icons.mouse),),
    );
  }
}