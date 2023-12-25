import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Delay for 2 seconds and then navigate to the home screen
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, '/game');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set your preferred background color
      body: Center(
        child: Image.network(
          'https://github.com/mayurrkukreja/mayurrkukreja.github.io/blob/main/app_logo1.png?raw=true', // Replace 'your_logo.png' with your actual image path
          width: 200, // Set the width of your logo
          height: 200, // Set the height of your logo
          // You can adjust width and height based on your logo's size
        ),
      ),
    );
  }
}
