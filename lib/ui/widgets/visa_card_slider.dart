import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../const/app_colors.dart';
import '../widgets/visa_card.dart';

class Visa_Card_Slider extends StatefulWidget {
  @override
  State<Visa_Card_Slider> createState() => _Visa_Card_SliderState();
}

class _Visa_Card_SliderState extends State<Visa_Card_Slider> {
  List Visa_Cards = [
    VisaCard(AppColors.deep_blue),
    VisaCard(Colors.deepPurple),
    VisaCard(AppColors.deep_blue),
  ];

  Widget buildView() {
    return Container(
      width: 350.w,
      height: 350.h,
      decoration: BoxDecoration(
          color: Colors.transparent, borderRadius: BorderRadius.circular(20)),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: Visa_Cards[currentIndex],
    );
  }

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 214, 209, 209),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CarouselSlider.builder(
              itemCount: Visa_Cards.length,
              itemBuilder: (context, _, index) {
                return buildView();
              },
              options: CarouselOptions(
                  height: 180,
                  enlargeCenterPage: false,
                  aspectRatio: 2.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  autoPlay: false)),
          DotsIndicator(
            dotsCount: Visa_Cards.length,
            position: currentIndex.toDouble(),
            decorator: const DotsDecorator(
              color: Colors.grey, // Inactive color
              activeColor: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
