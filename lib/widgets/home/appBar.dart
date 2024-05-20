import 'package:flutter/material.dart';
import '../../data/content.dart';
import 'popupMedia.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
            padding: const EdgeInsets.only(
                top: 20.0, left: 15, bottom: 20, right: 15), // Add padding
            child: SizedBox(
              height: 35.0,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // CircularImageContainer(),
                    Text(
                      appBarData['name']!,
                      style: const TextStyle(
                        fontSize: 17,
                        color: Color(0xFFECECEC),
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1.3,
                      ),
                    ),
                    const InfoIcon(),
                  ],
                ),
              ),
            )));
  }

  @override
  Size get preferredSize =>
      const Size.fromHeight(38.0); // Adjust preferredSize height
}
