import 'package:creativa_app/widgets/home/url.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../data/content.dart'; // Assuming you have a file named content.dart in a directory named data
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InfoIcon extends StatelessWidget {
  const InfoIcon({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (context) {
            return Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
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
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 10.0, bottom: 20.0),
                      child: Text(
                        'Social Media',
                        style: TextStyle(
                          fontSize: 25,
                          letterSpacing: 1.4,
                          color: Color.fromRGBO(0, 0, 0, .7),
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    Center(
                      child: Wrap(
                        spacing: 20.0,
                        runSpacing: 20.0,
                        alignment: WrapAlignment.center,
                        children: [
                          SocialMediaButton(
                            icon: FontAwesomeIcons.facebook,
                            text: 'Facebook',
                            url: socialMedia['facebook']!,
                          ),
                          SocialMediaButton(
                            icon: FontAwesomeIcons.whatsapp,
                            text: 'WhatsApp',
                            url: socialMedia['whatsapp']!,
                          ),
                          SocialMediaButton(
                            icon: FontAwesomeIcons.locationArrow,
                            text: 'Location',
                            url: socialMedia['location']!,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10)
                  ],
                ),
              ),
            );
          },
        );
      },
      child: const Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: EdgeInsets.only(right: 15.0),
          child: CircularImageContainer(),
        ),
      ),
    );
  }
}

class CircularImageContainer extends StatelessWidget {
  const CircularImageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Container(
        width: 36,
        height: 36,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white, // Set the background color to white
        ),
        child: ClipOval(
          child: Align(
            alignment: Alignment.center,
            child: Image.asset(
              appBarData["logoUrl"]!,
              width: 25,
              height: 35,
            ),
          ),
        ),
      ),
    );
  }
}

class SocialMediaButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final String url;

  const SocialMediaButton({
    Key? key,
    required this.icon,
    required this.text,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // Ensure all buttons have the same width
      width: 220, // Set the width as needed
      child: ElevatedButton.icon(
        onPressed: () => urlLaunche(url),
        icon: FaIcon(icon, color: Colors.white),
        label: Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.white,
              letterSpacing: 1.3,
            ),
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromRGBO(2, 90, 186, 0.82),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        ),
      ),
    );
  }
}
