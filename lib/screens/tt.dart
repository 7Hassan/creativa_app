import 'package:creativa_app/screens/onboard.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
    );
  }
}

class WelcomePop extends StatelessWidget {
  const WelcomePop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
              Image.asset(
            'assets/images/logo.JPG',
            height: 100,
            width: 100,
          ),
          const Text(
            'Welcome to',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              color: Color.fromRGBO(0, 0, 0, .8),
            ),
          ),
          const SizedBox(height: 3),
          const Text(
            'Creativa Port Said',
            style: TextStyle(
              fontSize: 25,
              color: Color.fromRGBO(0, 79, 159, 1.0),
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const IntroScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF004F9F),
                  minimumSize: const Size(304, 60), // Set width and height
                  padding: EdgeInsets.zero, // Remove internal padding
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(60.0), // Add border radius
                  ),
                ),
                child: const Text(
                  'Continue',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              )),
          const SizedBox(height: 10),
    ]);
  }
}

