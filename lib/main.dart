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
      home: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          body: Stack(
            children: [
              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(200),
                        bottomRight: Radius.circular(200)),
                    child: Container(
                      alignment: Alignment(0, -0.5),
                      child: Text(
                        'Would you begin',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                        ),
                      ),
                      color: Colors.blue,
                      height: 350,
                    ),
                  ),
                  Expanded(child: SizedBox()),
                ],
              ),
              Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  height: 200,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        buildTextFormField("Username"),
                        buildTextFormField("Password"),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }

  TextFormField buildTextFormField(String hint) {
    return TextFormField(
      decoration: InputDecoration(
          hintText: hint,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Colors.black),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Colors.black),
          ),
          fillColor: Colors.grey[300],
          filled: true),
    );
  }

  ListView buildListView() {
    return ListView(
      children: [
        TextFormField(),
      ],
    );
  }
}
