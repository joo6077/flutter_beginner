import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

void main() {
  // main스레드는 runApp을 실행시키고 종료됩니다.
  runApp(FirstApp()); // 비동기로 실행됨 (이벤트 루프에 등록됨)
}

// statelessWidget 한 번 그려지면 다시 안 그려짐.
// statefulWidget 데이터 변경 시 다시 그림이 그려짐. Widget build() 함수 재실행.
class FirstApp extends StatefulWidget {
  @override
  _FirstAppState createState() => _FirstAppState();
}

class _FirstAppState extends State<FirstApp> {
  var isChecked = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.white,
        ),
        home: Center(
          child: Scaffold(
            body: Center(child: AlertDialog(child: Text('안녕'))),
          ),
        ));
  }
}
