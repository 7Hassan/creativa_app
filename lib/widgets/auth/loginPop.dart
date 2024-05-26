

import 'package:creativa_app/widgets/auth/textField.dart';
import 'package:flutter/material.dart';

class LoginModel extends StatelessWidget {
  const LoginModel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.9,
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Log in',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  icon: const Icon(Icons.close, size: 40),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          SizedBox(
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                // Handle continue with Google
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFF12728),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  ImageIcon(
                    AssetImage('assets/images/google_icon.png'),
                    color: Colors.white,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Continue with Google',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Row(
            children: [
              Expanded(
                child: Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text('or'),
              ),
              Expanded(
                child: Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
              ),
            ],
          ),
          const SizedBox(height: 35),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  CustomTextField(
                    labelText: 'Email',
                  ),
                  const SizedBox(height: 20),
                  CustomTextField(
                    labelText: 'Password',
                    obscureText: true,
                  ),
                  const SizedBox(height: 40),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle continue
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF004F9F),
                        minimumSize: const Size(250, 55), 
                        maximumSize: const Size(300, 55),
                        padding: EdgeInsets.zero, 
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(60.0),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(
                                'Log in',
                                style: TextStyle(
                                  fontSize: 22,
                                  letterSpacing: 1.5,
                                  color: Colors.white,
                                ),
                                textAlign:TextAlign.center,
                              ),
                            ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
