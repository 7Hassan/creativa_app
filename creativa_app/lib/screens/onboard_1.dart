import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';
import '../data/content.dart';
import 'home.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(height: 15),
      ),
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            title: "About Us",
            body:
                "Creativa Community from the Ministry of Communications and Information Technology to build digital talent",
            image: Center(
                child: SvgPicture.asset(
              "assets/images/code.svg",
            )),
            decoration: const PageDecoration(
              pageColor: Colors.white,
              titleTextStyle: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w500,
                letterSpacing: 1.4,
              ),
              bodyTextStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w200,
                letterSpacing: 1.3,
                color: Color.fromRGBO(0, 0, 0, .8),
              ),
            ),
          ),
          PageViewModel(
            title: "Location",
            body: "Port Fouad, Port Said",
            image: Center(
                child: SvgPicture.asset(
              "assets/images/location.svg",
            )),
            footer: UrlLaunchButton(
                url: socialMedia["location"]!,
                buttonText: 'Get Location',
                color: Color(0xFF40C351)),
            decoration: const PageDecoration(
              pageColor: Colors.white,
              titleTextStyle: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w500,
                letterSpacing: 1.4,
              ),
              bodyTextStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w200,
                letterSpacing: 1.3,
                color: Color.fromRGBO(0, 0, 0, .8),
              ),
            ),
          ),
          PageViewModel(
            title: "Community",
            body: "Join us",
            image: Center(
                child: SvgPicture.asset(
              "assets/images/social.svg",
            )),
            footer: UrlLaunchButton(
                url: socialMedia["facebook"]!,
                buttonText: 'Facebook',
                color: Color(0xFF007AFF)),
            decoration: const PageDecoration(
              pageColor: Colors.white,
              titleTextStyle: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w500,
                letterSpacing: 1.4,
              ),
              bodyTextStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w200,
                letterSpacing: 1.3,
                color: Color.fromRGBO(0, 0, 0, .8),
              ),
            ),
          ),
        ],
        onDone: () async {
          final prefs = await SharedPreferences.getInstance();
          await prefs.setBool('introCompleted', true);
          // When done button is press
          Navigator.of(context)
              .pushReplacement(MaterialPageRoute(builder: (_) => Home()));
        },
        onSkip: () {
          // You can also override onSkip callback
          Navigator.of(context)
              .pushReplacement(MaterialPageRoute(builder: (_) => Home()));
        },
        showSkipButton: true,
        skip: const Text(
          'SKIP',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w300,
            letterSpacing: 1.4,
            color: Color.fromRGBO(0, 0, 0, .7),
          ),
        ),
        next: const Text(
          'NEXT',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            letterSpacing: 1.4,
            color: Color.fromRGBO(0, 79, 159, 1),
          ),
        ),
        done: const Text(
          'DONE',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            letterSpacing: 1.4,
            color: Color.fromRGBO(0, 79, 159, 1),
          ),
        ),
        dotsDecorator: const DotsDecorator(
          size: Size(19.0, 19.0),
          color: Color.fromRGBO(217, 217, 217, .6),
          activeSize: Size(19.0, 19.0),
          activeColor: Color.fromRGBO(0, 79, 159, 1),
        ),
      ),
    );
  }
}

class UrlLaunchButton extends StatelessWidget {
  final String url;
  final String buttonText;
  final Color color;

  const UrlLaunchButton({
    required this.url,
    required this.buttonText,
    required this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30, right: 30, top: 20),
      child: SizedBox(
          width: 150,
          height: 50,
          child: ElevatedButton(
            onPressed: () => _launchURL(url),
            child: Text(
              buttonText,
              style: TextStyle(fontSize: 16),
            ),
            style: ElevatedButton.styleFrom(
              primary: color, // Background color
              onPrimary: Colors.white, // Text color
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(60), // Button border radius
              ),
            ),
          )),
    );
  }

  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
