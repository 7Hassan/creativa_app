import 'package:flutter/material.dart';
import '../../data/courses.dart';
import 'courseItem.dart';
import 'popupCoures.dart';

class CoursesContainer extends StatelessWidget {
  const CoursesContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: Container(
          decoration: const BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 0.98),
          ),
          child: ListView.builder(
            itemCount: courseList.length,
            itemBuilder: (context, index) {
              var course = courseList[index];
              return GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled:
                        true, // Set to true for more vertical space
                    builder: (context) {
                      return CoursePopup(course: course);
                    },
                  );
                },
                child: CourseItem(course),
              );
            },
          ),
        ),
      ),
    );
  }
}
