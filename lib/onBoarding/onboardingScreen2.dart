import 'package:flutter/material.dart';

class OnboardingScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0, end: 1),
      duration: Duration(milliseconds: 500),
      builder: (BuildContext context, double val, Widget? child) {
        return Opacity(
          opacity: val,
          child: Padding(
            padding: EdgeInsets.only(left: val * 30),
            child: child,
          ),
        );
      },
      child: Column(
        children: [
          Image.asset(
            'asset/image/onbording2.png',
            width: MediaQuery.of(context).size.width * .70,
            fit: BoxFit.cover,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * .03),
          Text(
            'Unlock',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * .03),
          Text(
            'Use Bike Rent app to book and\n unlock the bike. Billing starts\nwhen bike is unlocked',
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
