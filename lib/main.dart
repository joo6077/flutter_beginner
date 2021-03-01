import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  // main스레드는 runApp을 실행시키고 종료됩니다.
  runApp(FirstApp()); // 비동기로 실행됨 (이벤트 루프에 등록됨)
}

// 저장만 하면 화면이 리로드 됨. 핫 리로드
class FirstApp extends StatelessWidget {
  final colorCodes = [600, 500, 400, 300, 200];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              children: [
                SizedBox(height: 10),
                Image.asset(
                  'assets/sponge_bob.png',
                  width: 300,
                  height: 400,
                ),
                SizedBox(height: 10),
                Text(
                  'NeedLework',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  'is voguish',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Handicraft lessons from',
                  style: TextStyle(
                    color: Colors.black45,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'the best designers',
                  style: TextStyle(
                    color: Colors.black45,
                  ),
                ),
                SizedBox(height: 10),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0)),
                  child: Container(
                    height: 50,
                    width: 120,
                    alignment: Alignment.center,
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                  ),
                  onPressed: () {
                    print('버튼 클리됨');
                  },
                  color: Color(0xff362a29),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
