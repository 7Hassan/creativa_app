import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  final Map<String, dynamic> course;

  const CourseItem(this.course, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 17, right: 17, bottom: 26),
      child: Container(
        height: 165,
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(17),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.05),
              spreadRadius: 3,
              blurRadius: 10,
              offset: Offset(0, 0),
            ),
          ],
        ),
        child: Row(
          children: [
            Image.asset(course['imgUrl'], width: 137, height: 135),
            const SizedBox(width: 8),
            Expanded(
              child: TextsColumn(course: course),
            ),
          ],
        ),
      ),
    );
  }
}

class TextsColumn extends StatelessWidget {
  final Map<String, dynamic> course;

  const TextsColumn({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 13),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: Text(
              course['courseName'],
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xFF1C509A),
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(height: 7),
          Flexible(
            child: Text(
              course['descriptionEn'],
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w300,
                color: Color.fromRGBO(0, 0, 0, 0.6),
              ),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            //  ),
          ),
          const SizedBox(height: 7),
          Row(
            children: [
              const Icon(Icons.access_time, color: Color(0xFF1C509A), size: 12),
              const SizedBox(width: 8),
              Text(
                course['duration'],
                style: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w300,
                  color: Color(0xFF1C509A),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
