import 'package:flutter/material.dart';
import 'package:whatsapp_ui/common/widgets/custom_button.dart';
import 'package:whatsapp_ui/features/auth/screens/login_screen.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);
  void navigateToLogin(BuildContext context) {
    Navigator.pushNamed(context, LoginScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 50),
          const Text(
            'Welcome to Chit Chat',
            style: TextStyle(
              fontSize: 33,
              fontWeight: FontWeight.w600,
            ),
          ),
          // give space acc to device size
          SizedBox(height: size.height / 9),
          Image.asset(
            'assets/bg.png',
            height: size.height / 2.5,
          ),
          SizedBox(height: size.height / 9),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'Read our Privacy Policy. Tap "Agree and continue" to accept the Terms of Service.',
              style: TextStyle(
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            child: CustomButton(
                text: 'AGREE AND CONTINUE',
                onPressed: () {
                  navigateToLogin(context);
                }),
            width: size.width * 0.75,
          ),
        ],
      )),
    );
  }
}
