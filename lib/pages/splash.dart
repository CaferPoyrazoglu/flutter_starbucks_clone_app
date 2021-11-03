import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/theme/theme_data.dart';
import '../theme/delay_effect.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () async {
      Get.offNamed("/Home");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWhite,
      body: Stack(
        children: [
          Center(
            child: DelayedDisplay(
                delay: Duration(milliseconds: 50),
                child: Image.asset("assets/images/img.png")),
          ),
        ],
      ),
    );
  }
}
