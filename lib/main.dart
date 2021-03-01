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

  Widget buildColumn(int index) {
    return Column(
      children: [
        ListTile(
          title: Text('제목'),
          subtitle: Text('부제목'),
          leading: Icon(Icons.account_box),
          onTap: () {
            print('눌러짐');
          },
        ),
        Row(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                height: 1,
                color: Colors.green,
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: Icon(Icons.accessibility),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                height: 1,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
