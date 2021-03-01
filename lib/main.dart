import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_icons/flutter_icons.dart';

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
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            leading: Icon(Icons.arrow_back),
            title: Text(
              'Credit Card',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 25,
                fontFamily: 'Roboto',
              ),
            ),
            centerTitle: true,
            actions: [
              Row(
                children: [
                  Icon(FlutterIcons.shoppingcart_ant),
                  SizedBox(width: 10),
                ],
              )
            ],
          ),
          body: ListView(
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              ClipOval(
                child: Image.asset(
                  'assets/fancy_card.jpg',
                  width: 300,
                  height: 100,
                  fit: BoxFit.contain,
                ),
              ),
              ClipRRect(
                // 사진을 동그라미로 하고 싶다.
                child: Image.asset(
                  'assets/fancy_card.jpg',
                  width: 300,
                  height: 100,
                  fit: BoxFit.contain,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              ClipRect(
                  // 사진을 네모로 자르고 싶다.
                  child: Align(
                child: Image.asset(
                  'assets/fancy_card.jpg',
                  width: 300,
                  height: 100,
                  fit: BoxFit.contain,
                ),
                heightFactor: 0.5,
                alignment: Alignment.topCenter,
              )),
              ClipPath(
                child: Image.asset(
                  'assets/fancy_card.jpg',
                  fit: BoxFit.fill,
                ),
                clipper: MyClipper(),
              ),
              ClipPath(
                clipper: StarClipper(8),
                child: Image.asset(
                  'assets/fancy_card.jpg',
                  fit: BoxFit.fill,
                  height: 400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, size.height);
    path.lineTo(size.width / 2, 0.0);
    path.lineTo(size.width, size.height);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
