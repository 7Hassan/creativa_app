import 'package:creativa_app/screens/home.dart';
import 'package:creativa_app/widgets/home/url.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../data/content.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  Future<void> onFinish() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('introCompleted', true);
    // When done button is press
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const SizedBox(height: 15),
      ),
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white,
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
                color: const Color(0xFF40C351)),
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
                color: const Color(0xFF007AFF)),
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
          onFinish();
          // When done button is press
         Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (context) => const Home(),
              ),
              (Route<dynamic> route) => false,
            );
        },
        onSkip: () {
          onFinish();
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (context) => const Home(),
              ),
              (Route<dynamic> route) => false,
            );
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
      padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
      child: SizedBox(
          width: 150,
          height: 50,
          child: ElevatedButton(
            onPressed: () => urlLaunche(url),
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: color, // Text color
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(60), // Button border radius
              ),
            ),
            child: Text(
              buttonText,
              style: const TextStyle(fontSize: 16),
            ),
          )),
    );
  }
}
