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
          body: Column(
            children: [
              RaisedButton(
                onPressed: () {
                  print('raisedButton 클림됨');
                },
                child: Text('레이즈드버튼'),
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                padding: EdgeInsets.all(30.0),
              ),
              FlatButton(
                  onPressed: () {
                    print('FlatButton 클림됨');
                  },
                  color: Colors.grey,
                  child: Text('플렛버튼')),
              InkWell(
                onTap: () {
                  print('커스텀 버튼 클릭됨');
                },
                child: Container(
                  color: Colors.green,
                  child: Text('커스텀 버튼'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
