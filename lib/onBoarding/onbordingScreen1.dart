import 'package:flutter/material.dart';

class OnboardingScreen1 extends StatelessWidget {
  const OnboardingScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'asset/image/onbording1.png',
          width: 300,
          fit: BoxFit.cover,
        ),
        SizedBox(height: 40),
        Text(
          'Locate',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 30),
        Text(
          'Locate a bike around the city\n See bike availabilty on the\nBike Rent App',
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
