import 'dart:async';
import 'package:flutter/material.dart';
import 'home.dart';
import 'start.dart';

class Splash extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(milliseconds: 1500), // Duration to wait before navigation
      () {
        // Navigate to the home screen
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Start()),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white, // Set background color if needed
        child: Center(
          child: Image.network(
            'https://firebasestorage.googleapis.com/v0/b/creativaapp-f2e63.appspot.com/o/logo_cer.png?alt=media&token=a327be02-2131-4d7b-af4a-0252bb3df554', // Replace with your image asset path
            width: 300, // Adjust width as needed
            height: 300, // Adjust height as needed
          ),
        ),
      ),
    );
  }
}
