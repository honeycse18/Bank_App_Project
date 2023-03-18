import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  List items = [
    {
      'image': 'assets/images/Frame-0.png',
      'title': 'Send Money Anywhere',
      'description':
          'With our unique technology, you can get money anywhere in the world.',
    },
    {
      'image': 'assets/images/Frame-1.png',
      'title': 'Safe & Secured',
      'description':
          'Safety of your funds is guaranteed. We’ve got you covered 24/7.',
    },
    {
      'image': 'assets/images/Frame-2.png',
      'title': 'Unbeatable Support',
      'description':
          'Send money to other sutraq users free of charge, with no additional fee.',
    }
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Center(
            child: Image.asset(
              items[_currentIndex]['image'],
              height: 264,
              width: 257,
            ),
          ),
          //dot indecator

          SizedBox(
            height: 30,
          ),
          Expanded(
            child: Container(
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20)),
                color: Colors.green,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 30, left: 25, right: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      items[_currentIndex]['title'],
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Divider(
                      color: Colors.transparent,
                    ),
                    Text(items[_currentIndex]['description'],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                    Divider(
                      color: Colors.transparent,
                    ),
                    SizedBox(
                      width: 400,
                      child: ElevatedButton(
                          onPressed: () {
                            _currentIndex += 1;
                            setState(() {});
                            print(_currentIndex);

                            if (_currentIndex >= 2) {
                              if (_currentIndex > 2) {
                                Navigator.pushNamed(context, '/login');
                                _currentIndex = 2;
                              }
                            }
                          },
                          style:
                              ElevatedButton.styleFrom(primary: Colors.black),
                          child: Text('Login',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 20))),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Try Sutraq',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
