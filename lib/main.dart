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
        // CupertinoApp()
        // AndroidApp 을 만들거예요.
        home: SafeArea(
      child: Scaffold(
        // 기본 구조를 들고 있어요.
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('First App'),
          leading: Icon(Icons.menu),
        ),
        body: Container(
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 100,
                color: Colors.green,
              ),
              Container(
                width: 100,
                color: Colors.red,
              ),
              Container(
                width: 100,
                color: Colors.orange,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Text('button'),
          onPressed: () {
            print('버튼 클릭');
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                label: 'hello',
                icon: Icon(
                  Icons.access_alarm_rounded,
                )),
            BottomNavigationBarItem(
                label: 'hello',
                icon: Icon(
                  Icons.access_alarm_rounded,
                ))
          ],
          backgroundColor: Colors.yellow,
        ),
      ),
    ));
  }
}
