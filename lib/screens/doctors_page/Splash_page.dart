import 'package:eye_test/config/screens_controller.dart';
import 'package:eye_test/main.dart';
import 'package:flutter/material.dart';
import 'package:eye_test/screens/home_page/Homepage.dart';
import 'package:eye_test/theme/light_color.dart';
import 'package:eye_test/theme/text_style.dart';
import 'package:eye_test/theme/extention.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2)).then((_) {
      Navigator.pushNamed(context, "/splash_control");
      //Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => ScreensController()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/screen_time.jpg",),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Positioned.fill(
            child: Opacity(
              opacity: .6,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.transparent, Colors.transparent],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      tileMode: TileMode.mirror,
                      stops: [.25, 3]),
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 6,
                child: SizedBox(),
              ),

              Expanded(
                flex: 2,
                child: SizedBox(),
              ),
            ],
          ).alignTopCenter,
        ],
      ),
    );
  }
}