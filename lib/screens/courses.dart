import 'package:flutter/material.dart';
import '../widgets/home/appBar.dart';
import '../widgets/home/courses.dart';

class Courses extends StatelessWidget {
  const Courses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(2, 90, 186, 0.82),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomAppBar(),
          CoursesContainer(),
        ],
      ),
    );
  }
}
