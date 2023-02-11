import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            height: 100,
            width: 100,
            child: Image.asset("assets/logo/ig.png"),
          ),
        ),
      ),
    );
  }
}
