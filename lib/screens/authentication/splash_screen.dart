import 'dart:async';
import 'package:dycca_user_app/screens/authentication/login_screen.dart';
import 'package:dycca_user_app/utils/constants.dart';
import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) {
          return  LoginScreen();
        }),
      );
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor:neutral7Color,
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            projectName,
             ],
        ),
      ),
    );
  }
}
