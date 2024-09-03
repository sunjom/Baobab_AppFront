// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"BBANTO",
      home: Grade(),
    );
  }
}

class Grade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //여기에 bg를 주면 배경 전체에 적용 가능.
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: const Text("BBANTO"),
        backgroundColor: Colors.amber[700],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          
          children: [
            //pubspec.yaml에 이미지 경로 입력 후, CircleAvatar=> 원형 Div, 속성으로 이미지를 불러오면 됨.
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/abc.jpg'),
                //크기 60
                radius: 60.0,
              ),
            ),
            //나누는 선을 하나 그림.
            Divider(
              //Divider가 위아래로 30px씩 떨어져 있다는 뜻.
              height: 60.0,
              color:Colors.grey[850],
              //선 굵기
              thickness: 0.5,
              //끝에서 부터 어느정도 떨어져야 할지 정함.
              endIndent: 30.0,
            ),
            Text("Name" ,style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
            )),
            SizedBox(
              height: 10.0,
            ),
            Text("BBANTO",
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
              fontSize: 28.0,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(
              height: 30.0,
            )
            ,
            Text("BBANTO POWER LEVEL" ,style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
            )),
            SizedBox(
              height: 10.0,
            ),
            Text("14",
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
              fontSize: 28.0,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(
              height: 30.0,
            )
            ,
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 16.0,
                ),
                Text('face hero tattoo',
                style: TextStyle(
                  fontSize: 16.0,
                  letterSpacing: 1.0,
                )
                ,)
              ],
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 16.0,
                ),
                Text('fire flames',
                style: TextStyle(
                  fontSize: 16.0,
                  letterSpacing: 1.0,
                )
                ,)
              ],
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 16.0,
                ),
                Text('using lightpower',
                style: TextStyle(
                  fontSize: 16.0,
                  letterSpacing: 1.0,
                )
                ,)
              ],
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/dfg.jpg'),
                radius:40.0,
                backgroundColor: Colors.amber,
              ),
            )
          ],
        ),
        )
    );
  }
}