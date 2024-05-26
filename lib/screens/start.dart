import 'package:creativa_app/widgets/auth/loginPop.dart';
import 'package:creativa_app/widgets/auth/signupPop.dart';
import 'package:creativa_app/widgets/start/btn.dart';
import 'package:flutter/material.dart';
import 'package:creativa_app/data/content.dart';


class Start extends StatelessWidget {
  const Start({Key? key}) : super(key: key);

   void _showSignUpModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      builder: (BuildContext context) {
        return const SignUpModal();
      },
    );
  }

  void _navigateToLogIn(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      builder: (BuildContext context) {
        return const LoginModel();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Image.asset(
                'assets/images/welcome4.gif',
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
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
                fontSize: 30,
                color: Color.fromRGBO(0, 79, 159, 1.0),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            CustomButton(
              text: 'Sign up',
              color: const Color(0xFF004F9F),
              textColor: Colors.white,
              onPressed: () => _showSignUpModal(context),
            ),
            const SizedBox(height: 9),
            CustomButton(
              text: 'Log in',
              color: const Color.fromRGBO(239, 239, 239, 1),
              textColor: Colors.black,
              onPressed: () => _navigateToLogIn(context),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                policy,
                style: const TextStyle(
                  fontSize: 13,
                  color: Color.fromRGBO(0, 0, 0, 0.486),
                ),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
