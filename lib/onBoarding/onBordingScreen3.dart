import 'package:flutter/material.dart';

class OnboardingScreen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0, end: 1),
      duration: Duration(milliseconds: 500),
      builder: (BuildContext context, double val, Widget? child) {
        return Opacity(
          opacity: val,
          child: Padding(
            padding: EdgeInsets.only(right: val * 30),
            child: child,
          ),
        );
      },
      child: Column(
        children: [
          Image.asset(
            'asset/image/onbording3.png',
            width: MediaQuery.of(context).size.width * .70,
            fit: BoxFit.cover,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * .03),
          Text(
            'Ride',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * .03),
          Text(
            'Enjoy your ride. And when you\'re\n done iust park legaliy and lock\n the bike to stop biling.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontStyle: FontStyle.italic,
            ),
          )
        ],
      ),
    );
  }
}
