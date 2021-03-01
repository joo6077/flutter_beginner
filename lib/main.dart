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
          body: Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.orange,
            alignment: Alignment(1.0, 1.0),
            child: Text.rich(TextSpan(children: [
              TextSpan(text: '안녕'),
              TextSpan(
                  text:
                      '안녕dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd'),
            ])),
          ),
        ),
      ),
    );
  }
}
