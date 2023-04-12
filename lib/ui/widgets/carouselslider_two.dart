import 'package:bank_app_project/const/app_colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Carousel_Slider_two extends StatefulWidget {
  const Carousel_Slider_two({super.key});

  @override
  State<Carousel_Slider_two> createState() => _Carousel_Slider_twoState();
}

class _Carousel_Slider_twoState extends State<Carousel_Slider_two> {
  List img = [
    'assets/logo/ngn.png',
    'assets/logo/usd.png',
    'assets/logo/image 16.png',
  ];
  List title = [
    'NGN',
    'USD',
    'SUTRAQ CURRENCY',
  ];

  List text = [
    '₦190,000',
    '\$42,000',
    'Q190,000',
  ];

  Widget buildView() {
    return Container(
      width: 300,
      decoration: BoxDecoration(
          color: AppColors.deep_blue, borderRadius: BorderRadius.circular(20)),
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: box(img[currentIndex], title[currentIndex], text[currentIndex]),
    );
  }

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(26, 156, 170, 182),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CarouselSlider.builder(
              itemCount: title.length,
              itemBuilder: (context, _, index) {
                return buildView();
              },
              options: CarouselOptions(
                  height: 130,
                  enlargeCenterPage: true,
                  aspectRatio: 2.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  autoPlay: false)),
          DotsIndicator(
            dotsCount: title.length,
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

Widget box(img, title, text) {
  return Padding(
    padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 40.h,
              child: Row(
                children: [
                  Image.asset(
                    img,
                    height: 20.h,
                    width: 20.w,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            Container(
              child: Icon(
                Icons.visibility_outlined,
                size: 15,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5.h,
        ),
        Text(
          'Available Balance',
          style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 194, 192, 192)),
        ),
        SizedBox(
          height: 15.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            Icon(
              Icons.arrow_forward,
              color: Colors.grey,
            )
          ],
        ),
      ],
    ),
  );
}
