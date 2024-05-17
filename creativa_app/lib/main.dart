import 'package:flutter/material.dart';
import 'screens/home.dart'; // Import HomeScreen class
import 'screens/splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Creativa PS',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Splash(), // Provide a value for the title
    );
  }
}
