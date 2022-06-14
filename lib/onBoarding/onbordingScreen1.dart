import 'dart:ffi';

import 'package:flutter/material.dart';

class OnboardingScreen1 extends StatelessWidget {
  const OnboardingScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0, end: 1),
      duration: Duration(milliseconds: 1000),
      builder: (BuildContext context, double val, Widget? child) {
        return Opacity(
          opacity: val,
          child: Padding(
            padding: EdgeInsets.only(top: val * 30),
            child: child,
          ),
        );
      },
      child: Column(
        children: [
          Image.asset(
            'asset/image/onbording1.png',
            width: MediaQuery.of(context).size.width * .70,
            fit: BoxFit.cover,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * .03),
          Text(
            'Locate',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * .03),
          Text(
            'Locate a bike around the city\n See bike availabilty on the\nBike Rent App',
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
