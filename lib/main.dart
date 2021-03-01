import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  // main스레드는 runApp을 실행시키고 종료됩니다.
  runApp(FirstApp()); // 비동기로 실행됨 (이벤트 루프에 등록됨)
  sleep(Duration(seconds: 3));
  print('main종료');
}

// 저장만 하면 화면이 리로드 됨. 핫 리로드
class FirstApp extends StatelessWidget {
  final colorCodes = [600, 500, 400, 300, 200];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: ListView.builder(
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return buildColumn(index);
              }),
        ),
      ),
    );
  }

  Column buildColumn(int index) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 50,
          color: Colors.amber[colorCodes[index]],
          child: Text('번호 : ${index}'),
        ),
        Container(
          height: 5,
        )
      ],
    );
  }
}
