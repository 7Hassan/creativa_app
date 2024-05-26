import 'package:creativa_app/data/content.dart';
import 'package:creativa_app/screens/courses.dart';
import 'package:creativa_app/widgets/home/url.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          // Image should fill the entire screen
          Positioned.fill(
            child: Image.asset(
              'assets/images/welcome3.gif',
              fit: BoxFit.cover, // Ensure the image fills the space
            ),
          ),
          // Container at the bottom of the screen
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: WelcomePop(), // Assuming WelcomePop is a valid widget
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

class WelcomePop extends StatelessWidget {
  const WelcomePop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Text(
        'Contact us',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 30,
          color: Color.fromRGBO(0, 79, 159, 1.0),
          fontWeight: FontWeight.w600,
          letterSpacing: 1.5,
        ),
      ),
      const SizedBox(height: 10),
      const SocialContainer(),
      const SizedBox(height: 20),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Courses()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF004F9F),
              minimumSize: const Size(250, 55), // Set width and height
              maximumSize: const Size(300, 55), // Set width and height
              padding: EdgeInsets.zero, // Remove internal padding
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(60.0), // Add border radius
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Courses',
                      style: TextStyle(
                        fontSize: 22,
                        letterSpacing: 1.5,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                ],
              ),
            )),
      ),
    ]);
  }
}

class SocialContainer extends StatelessWidget {
  const SocialContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        spacing: 25.0,
        runSpacing: 20.0,
        alignment: WrapAlignment.center,
        children: [
          SocialMediaButton(
              icon: FontAwesomeIcons.facebook,
              text: 'Facebook',
              url: socialMedia['facebook']!,
              color: Color.fromRGBO(8, 102, 255, 1)),
          SocialMediaButton(
              icon: FontAwesomeIcons.whatsapp,
              text: 'WhatsApp',
              url: socialMedia['whatsapp']!,
              color: Color.fromRGBO(64, 195, 81, 1)),
          SocialMediaButton(
              icon: FontAwesomeIcons.locationArrow,
              text: 'Location',
              url: socialMedia['location']!,
              color: Color.fromRGBO(52, 168, 83, 1)),
        ],
      ),
    );
  }
}

class SocialMediaButton extends StatelessWidget {
  final IconData icon;
  final String url;
  final Color color;
  final String text;

  const SocialMediaButton({
    Key? key,
    required this.icon,
    required this.url,
    required this.color,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ElevatedButton(
          onPressed: () => urlLaunche(url),
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(), backgroundColor: color,
            padding: const EdgeInsets.all(16), // Background color
          ),
          child: FaIcon(icon, size: 30, color: Colors.white),
        ),
        const SizedBox(height: 10), // Space between the icon and text
        Text(
          text,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            letterSpacing: 2,
            color: Color.fromRGBO(
                0, 0, 0, .5), // Change this to your desired text color
          ),
        ),
      ],
    );
  }
}
