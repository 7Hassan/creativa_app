import 'package:creativa_app/screens/onboard_1.dart';
import 'package:flutter/material.dart';

class Start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Image.asset(
              'assets/images/welcome.gif',
              fit: BoxFit.cover, // Ensure the image fills the space
            ),
          ),
          Image.asset(
            'assets/images/logo.JPG',
            height: 100,
            width: 100,
          ),
          Text(
            'Welcome to',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              color: Color.fromRGBO(0, 0, 0, .8),
            ),
          ),
          SizedBox(height: 3),
          Text(
            'Creativa Port Said',
            style: TextStyle(
              fontSize: 25,
              color: Color.fromRGBO(0, 79, 159, 1.0),
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => IntroScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF004F9F),
                  minimumSize: Size(304, 60), // Set width and height
                  padding: EdgeInsets.zero, // Remove internal padding
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(60.0), // Add border radius
                  ),
                ),
                child: Text(
                  'Continue',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              )),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
