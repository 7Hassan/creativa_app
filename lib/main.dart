import 'package:creativa_app/screens/home.dart';
import 'package:creativa_app/screens/start.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
//import 'screens/splash.dart';

Future<bool> readFromPrefs() async {
  final prefs = await SharedPreferences.getInstance();
  final introCompleted = prefs.getBool('introCompleted') ?? false;
  return introCompleted;
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  bool completed = await readFromPrefs();

  runApp(MyApp(completed));
}

class MyApp extends StatelessWidget {
  final bool completed;
  const MyApp(this.completed, {super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Creativa PS',
      theme: ThemeData(colorSchemeSeed: const Color.fromRGBO(2, 90, 186, 0.82)),
      home: completed ? const Home() : const Start(),
    );
  }
}
