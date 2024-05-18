import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'home.dart';
import 'start.dart';

Future<bool> _readFromPrefs() async {
  final prefs = await SharedPreferences.getInstance();
  final introCompleted = prefs.getBool('introCompleted') ?? false;
  print('Is intro completed? $introCompleted');
  return introCompleted;
}

class Splash extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<Splash> {
  late Future<bool> introCompleted; // Declare as late Future<bool>

  @override
  void initState() {
    super.initState();
    introCompleted =
        _readFromPrefs(); // Initialize introCompleted with the Future<bool>
    Timer(
      Duration(milliseconds: 1500), // Duration to wait before navigation
      () {
        // Navigate to the appropriate screen based on the intro status
        introCompleted.then((completed) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => completed ? Home() : Start(),
            ),
          );
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white, // Set background color if needed
        child: Center(
          child: Image.asset(
            'assets/images/logo_cer.png', // Replace with your image asset path
            width: 300, // Adjust width as needed
            height: 300, // Adjust height as needed
          ),
        ),
      ),
    );
  }
}
