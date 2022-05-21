import 'package:flutter/material.dart';

class OnboardingScreen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'asset/image/onbording3.png',
          width: 300,
          fit: BoxFit.cover,
        ),
        SizedBox(height: 40),
        Text(
          'Ride',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 20),
        Text(
          'Enjoy your ride. And when you\'re\n done iust park legaliy and lock\n the bike to stop biling.',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            fontStyle: FontStyle.italic,
          ),
        )
      ],
    );
  }
}
