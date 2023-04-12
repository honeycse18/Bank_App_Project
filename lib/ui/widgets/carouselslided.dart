import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Carousel_Slider extends StatefulWidget {
  const Carousel_Slider({super.key});

  @override
  State<Carousel_Slider> createState() => _Carousel_SliderState();
}

class _Carousel_SliderState extends State<Carousel_Slider> {
  List img = [
    'assets/logo/image 16.png',
    'assets/logo/usd.png',
    'assets/logo/image 16.png',
  ];
  List title = [
    'SUTRAQ CURRENCY',
    'USD',
    'SUTRAQ CURRENCY',
  ];

  List text = [
    'Q190,000',
    '\$42,000',
    'Q190,000',
  ];
  Widget buildView() {
    return Container(
      width: 300,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: box(img[currentIndex], title[currentIndex], text[currentIndex]),
    );
  }

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CarouselSlider.builder(
              itemCount: title.length,
              itemBuilder: (context, _, index) {
                return buildView();
              },
              options: CarouselOptions(
                  height: 140.h,
                  enlargeCenterPage: false,
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
                    width: 5.w,
                  ),
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
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
              fontSize: 12.sp, fontWeight: FontWeight.w600, color: Colors.grey),
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
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.green),
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











// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class Carousel_Slider extends StatefulWidget {
//   const Carousel_Slider({super.key});

//   @override
//   State<Carousel_Slider> createState() => _Carousel_SliderState();
// }

// class _Carousel_SliderState extends State<Carousel_Slider> {
//   @override
//   Widget build(BuildContext context) {
//     List Cards = [
//       box(
//         'assets/logo/image 16.png',
//         'SUTRAQ CURRENCY',
//         'Available Balance',
//         'Q190,000',
//       ),
//       box('assets/logo/usd.png', 'USD', 'Available Balance', '\$42,000'),
//       box(
//         'assets/logo/image 16.png',
//         'SUTRAQ CURRENCY',
//         'Available Balance',
//         'Q190,000',
//       ),
//     ];
//     int currentIndex = 0;
//     return SafeArea(
//         child: Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(left: 30),
//               child: CarouselSlider(
//                 items: [
//                   for (int i = 0; i < Cards.length; i++)
//                     Container(
//                       height: 120.h,
//                       width: 250.w,
//                       // margin: EdgeInsets.only(right: 10),
//                       padding: EdgeInsets.only(
//                           top: 10, left: 15, right: 15, bottom: 10),
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(
//                           10,
//                         ),
//                       ),
//                       child: Cards[i],
//                     ),
//                 ],
//                 options: CarouselOptions(
//                     onPageChanged: (index, reason) {
//                       setState(() {
//                         currentIndex = index;
//                       });
//                     },
//                     autoPlay: false),
//               ),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 for (int i = 0; i < Cards.length; i++)
//                   Container(
//                     height: 13.h,
//                     width: 13.w,
//                     margin: EdgeInsets.all(5),
//                     decoration: BoxDecoration(
//                         color: currentIndex == i ? Colors.blue : Colors.white,
//                         shape: BoxShape.circle,
//                         boxShadow: [
//                           BoxShadow(
//                               color: Colors.grey,
//                               spreadRadius: 1,
//                               blurRadius: 3,
//                               offset: Offset(2, 2))
//                         ]),
//                   )
//               ],
//             )
//           ],
//         ),
//       ),
//     ));
//   }
// }

// //Cards

// Widget box(img, title1, text1, text2) {
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     children: [
//       Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Image.asset(
//             img,
//           ),
//           SizedBox(
//             width: 5.w,
//           ),
//           Text(
//             title1,
//             style: TextStyle(
//                 fontSize: 18.sp,
//                 fontWeight: FontWeight.w600,
//                 color: Colors.black),
//           ),
//           Container(
//             child: Icon(
//               Icons.visibility_outlined,
//               size: 20,
//             ),
//           ),
//         ],
//       ),
//       Text(
//         text1,
//         style: TextStyle(
//             fontSize: 12, fontWeight: FontWeight.w600, color: Colors.grey),
//       ),
//       Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(
//             text2,
//             style: TextStyle(
//                 fontSize: 28, fontWeight: FontWeight.w600, color: Colors.green),
//           ),
//           Icon(
//             Icons.arrow_forward,
//             color: Colors.grey,
//           )
//         ],
//       ),
//     ],
//   );
// }
