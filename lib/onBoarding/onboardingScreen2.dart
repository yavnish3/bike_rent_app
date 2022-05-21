import 'package:flutter/material.dart';

class OnboardingScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'asset/image/onbording2.png',
          width: 300,
          fit: BoxFit.cover,
        ),
        SizedBox(height: 40),
        Text(
          'Unlock',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 20),
        Text(
          'Use Bike Rent app to book and\n unlock the bike. Billing starts\nwhen bike is unlocked',
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
