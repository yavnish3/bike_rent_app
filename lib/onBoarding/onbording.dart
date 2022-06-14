import 'package:bike_rent_app/constant.dart';
import 'package:bike_rent_app/onBoarding/onBordingScreen3.dart';
import 'package:bike_rent_app/onBoarding/onboardingScreen2.dart';
import 'package:bike_rent_app/onBoarding/onbordingScreen1.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController controller = PageController();
  List<Widget> _list = <Widget>[
    OnboardingScreen1(),
    OnboardingScreen2(),
    OnboardingScreen3(),
  ];
  int _curr = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * .55,
              child: PageView(
                children: _list,
                scrollDirection: Axis.horizontal,
                controller: controller,
                onPageChanged: (n) {
                  setState(() {
                    _curr = n;
                  });
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      if (_curr != _list.length - 1)
                        controller.jumpToPage(_curr + 1);
                      else
                        controller.jumpToPage(0);
                    });
                  },
                  child: Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: Container(
                      height: _curr != _list.length - 1 ? 60 : 50,
                      alignment: Alignment.center,
                      width: _curr != _list.length - 1 ? 60 : 100,
                      decoration: BoxDecoration(
                          color: pColor,
                          shape: _curr != _list.length - 1
                              ? BoxShape.circle
                              : BoxShape.rectangle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 15,
                              spreadRadius: 3,
                            )
                          ]),
                      child: _curr != _list.length - 1
                          ? Icon(
                              Icons.arrow_forward_ios,
                              size: 30,
                            )
                          : Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                              ),
                            ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
