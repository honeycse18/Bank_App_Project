import 'package:bank_app_project/ui/widgets/button.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../const/app_colors.dart';

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

  int currentIndex = 0;

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
              items[currentIndex]['image'],
              height: 264,
              width: 257,
            ),
          ),
          //dot indecator
          DotsIndicator(
            dotsCount: items.length,
            position: currentIndex.toDouble(),
            decorator: const DotsDecorator(
              color: Colors.black87, // Inactive color
              activeColor: Colors.blue,
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Expanded(
            child: Container(
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20)),
                color: AppColors.deep_green,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 40, left: 35, right: 35),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 30.h,
                    ),
                    Text(
                      items[currentIndex]['title'],
                      style: TextStyle(
                          fontSize: 25.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Text(items[currentIndex]['description'],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 30.h,
                    ),
                    CustomButton(
                      onTap: () {
                        if (currentIndex < 2) {
                          setState(() {});
                          currentIndex++;
                        } else
                          Navigator.pushNamed(context, '/login');
                      },

                      buttonText: 'LOGIN',
                      style: TextStyle(fontWeight: FontWeight.bold),
                      buttonColor: Colors.black,
                      textColor: Colors.white,
                      // BorderRadius: 10,
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Text(
                      'Try Sutraq',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20.sp),
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
