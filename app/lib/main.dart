import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color(0xFF781EFF),
  ));
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image Example'),
        ),
        body: Center(
          child: Image.asset('assets/mobile.png'),
        ),
      ),
    );
  }
}
