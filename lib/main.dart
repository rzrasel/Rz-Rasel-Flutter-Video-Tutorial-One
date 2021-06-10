// Rz Rasel Tutorial (Rashed - Uz - Zaman)
// Import flutter material package
import "package:flutter/material.dart";
import "dart:async";
import "HomePage.dart";

void main() {
  runApp(MaterialApp(
    home: SplashScreen(),
  ));
}

class SplashScreen extends StatefulWidget {
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
        () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomePage(),
            )
          );
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlutterLogo(
          size: 400,
        ),
      ),
    );
  }
}