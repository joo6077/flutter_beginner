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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: HomeApp(),
        ),
      ),
    );
  }
}

class HomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: how to get safearea heihgt
    var m = MediaQuery.of(context);
    print('넓이 : ${m.size.width}');
    print('넓이 : ${m.size.height}');
    print('safearea : ${m.padding.top}');
    return Column(
      children: [
        Container(
          height: (m.size.height - 24) * 0.7,
          color: Colors.blue,
        ),
        Container(
          height: (m.size.height - 24) * 0.3,
          color: Colors.red,
        ),
      ],
    );
  }
}
