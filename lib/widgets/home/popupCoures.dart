import 'package:creativa_app/widgets/home/url.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CoursePopup extends StatelessWidget {
  final Map<String, dynamic> course;

  const CoursePopup({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    var url = course["form"];
    return SingleChildScrollView(
      physics:
          const AlwaysScrollableScrollPhysics(), // Make it always scrollable
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            Image.asset(
              course['imgUrl'],
              height: 172,
              width: 201,
            ),
            const SizedBox(height: 15),
            Text(
              course['courseName'],
              style: const TextStyle(
                fontSize: 20,
                color: Color.fromRGBO(28, 80, 154, 1.0),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Text(
              course['descriptionEn'],
              style: const TextStyle(
                fontSize: 15,
                color: Color.fromRGBO(0, 0, 0, 0.8),
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Text(
              'Course Duration ${course['duration']}',
              style: const TextStyle(
                fontSize: 15,
                color: Color.fromRGBO(28, 80, 154, 1.0),
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => urlLaunche(url),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF004F9F),
                minimumSize: const Size(304, 55), // Set width and height
                padding: EdgeInsets.zero, // Remove internal padding
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(60.0), // Add border radius
                ),
              ),
              child: const Row(
                mainAxisSize: MainAxisSize
                    .min, // Make the Row occupy only the space required by its children
                children: [
                  Text(
                    'Register Now',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(width: 8), // Add space between text and icon
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
