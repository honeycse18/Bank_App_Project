import 'package:bank_app_project/ui/widgets/carouselslider_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../const/app_colors.dart';
import '../../widgets/button.dart';
import '../../widgets/icon_button.dart';
import '../../widgets/carouselslided.dart';

class Wallet extends StatelessWidget {
  const Wallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(26, 12, 76, 131),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20.h),
            Text(
              'My Wallets',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(height: 30.h),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Container(
                height: 170.h,
                child: Carousel_Slider_two(),
              ),
            ),
            SizedBox(height: 10.h),
            Expanded(
              child: Container(
                width: double.maxFinite,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20)),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 35, right: 35, top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon_Button(
                              Icon: Image.asset(
                                'assets/icons/fund.png',
                              ),
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return Dialog(
                                        child: Container(
                                          height: 300.h,
                                          width: 350.w,
                                          padding: EdgeInsets.only(
                                              top: 40,
                                              left: 5,
                                              right: 5,
                                              bottom: 20),
                                          // margin: EdgeInsets.all(10),
                                          child: Column(
                                            children: [
                                              Column(
                                                children: [
                                                  Image.asset(
                                                    'assets/logo/email_Sent.PNG',
                                                    height: 50.h,
                                                    width: 70.w,
                                                  ),
                                                  SizedBox(
                                                    height: 20.h,
                                                  ),
                                                  Text(
                                                    "Check Your Inbox!",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontSize: 20.sp,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color:
                                                            Colors.grey[900]),
                                                  ),
                                                  SizedBox(
                                                    height: 10.h,
                                                  ),
                                                  Text(
                                                    "An Email has been sent to you. \n Click the link to reset your password.",
                                                    style: TextStyle(
                                                        fontSize: 10.sp,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.grey),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                  SizedBox(
                                                    height: 20.h,
                                                  ),
                                                  SizedBox(
                                                    height: 60.h,
                                                    width: 200.w,
                                                    child: CustomButton(
                                                      onTap: () {},

                                                      buttonText: 'CHECK MAIL',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 5.sp,
                                                      ),
                                                      buttonColor:
                                                          AppColors.deep_green,
                                                      textColor: Colors.white,
                                                      // BorderRadius: 10,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    });
                              },
                              IconSize: 35.0,
                              avaterColor: AppColors.deep_green,
                              textColor: Colors.black,
                              title: 'Send Money',
                              iconColor: Colors.white,
                            ),
                            Icon_Button(
                              Icon: Image.asset(
                                'assets/icons/send.png',
                              ),
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return Dialog(
                                        child: Container(
                                          height: 300.h,
                                          width: 350.w,
                                          padding: EdgeInsets.only(
                                              top: 40,
                                              left: 5,
                                              right: 5,
                                              bottom: 20),
                                          // margin: EdgeInsets.all(10),
                                          child: Column(
                                            children: [
                                              Column(
                                                children: [
                                                  Image.asset(
                                                    'assets/logo/email_Sent.PNG',
                                                    height: 50.h,
                                                    width: 70.w,
                                                  ),
                                                  SizedBox(
                                                    height: 20.h,
                                                  ),
                                                  Text(
                                                    "Check Your Inbox!",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontSize: 20.sp,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color:
                                                            Colors.grey[900]),
                                                  ),
                                                  SizedBox(
                                                    height: 10.h,
                                                  ),
                                                  Text(
                                                    "An Email has been sent to you. \n Click the link to reset your password.",
                                                    style: TextStyle(
                                                        fontSize: 10.sp,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.grey),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                  SizedBox(
                                                    height: 20.h,
                                                  ),
                                                  SizedBox(
                                                    height: 60.h,
                                                    width: 200.w,
                                                    child: CustomButton(
                                                      onTap: () {},

                                                      buttonText: 'CHECK MAIL',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 5.sp,
                                                      ),
                                                      buttonColor:
                                                          AppColors.deep_green,
                                                      textColor: Colors.white,
                                                      // BorderRadius: 10,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    });
                              },
                              IconSize: 35.0,
                              avaterColor: AppColors.deep_green,
                              textColor: Colors.black,
                              title: 'Fund Wallet',
                              iconColor: Colors.white,
                            ),
                            Icon_Button(
                              Icon: Image.asset(
                                'assets/icons/withdraw.png',
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, '/withdraw');
                              },
                              IconSize: 35.0,
                              avaterColor: AppColors.deep_green,
                              textColor: Colors.black,
                              title: 'Fund Wallet',
                              iconColor: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),

                    Container(
                      width: double.maxFinite,
                      height: 350,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 35, left: 30, right: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Recent Transactions",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.sp,
                                      color: Colors.grey[900])),
                              Divider(thickness: 1.0, color: Colors.grey[300]),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        CircleAvatar(
                                            maxRadius: 16,
                                            backgroundColor: Color.fromARGB(
                                                255, 179, 236, 255),
                                            child: Icon(
                                                Icons.call_received_rounded,
                                                color: Color.fromARGB(
                                                    255, 9, 197, 16),
                                                size: 16)),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("Access Bank",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16.sp,
                                                    color: Color.fromARGB(
                                                        255, 12, 1, 59))),
                                            Text("28, Jan, 2020",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12.sp,
                                                    color: Colors.grey)),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Text("\$2400",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.sp,
                                            color: Color.fromARGB(
                                                255, 12, 1, 59))),
                                  ]),
                              Divider(thickness: 1.0, color: Colors.grey[300]),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        CircleAvatar(
                                            maxRadius: 16,
                                            backgroundColor: Color.fromARGB(
                                                255, 255, 178, 178),
                                            child: Icon(Icons.call_made,
                                                color: Color.fromARGB(
                                                    255, 234, 24, 9),
                                                size: 16)),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("Alpha Loans",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16.sp,
                                                    color: Color.fromARGB(
                                                        255, 12, 1, 59))),
                                            Text("25, Jan, 2020",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12.sp,
                                                    color: Colors.grey)),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Text("\₦10,000",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.sp,
                                            color: Color.fromARGB(
                                                255, 12, 1, 59))),
                                  ]),
                              Divider(thickness: 1.0, color: Colors.grey[300]),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(children: [
                                      CircleAvatar(
                                          maxRadius: 16,
                                          backgroundColor: Color.fromARGB(
                                              255, 179, 236, 255),
                                          child: Icon(
                                              Icons.call_received_rounded,
                                              color: Color.fromARGB(
                                                  255, 9, 197, 16),
                                              size: 16)),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Access Bank",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16.sp,
                                                  color: Color.fromARGB(
                                                      255, 12, 1, 59))),
                                          Text("23, Jan, 2020",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12.sp,
                                                  color: Colors.grey)),
                                        ],
                                      ),
                                    ]),
                                    Text("\₦4500,000",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.sp,
                                            color: Color.fromARGB(
                                                255, 12, 1, 59))),
                                  ]),
                              Divider(thickness: 1.0, color: Colors.grey[300]),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(children: [
                                      CircleAvatar(
                                          maxRadius: 16,
                                          backgroundColor: Color.fromARGB(
                                              255, 255, 178, 178),
                                          child: Icon(Icons.call_made,
                                              color: Color.fromARGB(
                                                  255, 234, 24, 9),
                                              size: 16)),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Alpha Loans",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16.sp,
                                                  color: Color.fromARGB(
                                                      255, 12, 1, 59))),
                                          Text("21, Jan, 2020",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12.sp,
                                                  color: Colors.grey)),
                                        ],
                                      ),
                                    ]),
                                    Text("\₦2000",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.sp,
                                            color: Color.fromARGB(
                                                255, 12, 1, 59))),
                                  ]),
                              Divider(thickness: 1.0, color: Colors.grey[300]),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(children: [
                                      CircleAvatar(
                                          maxRadius: 16,
                                          backgroundColor: Color.fromARGB(
                                              255, 179, 236, 255),
                                          child: Icon(
                                              Icons.call_received_rounded,
                                              color: Color.fromARGB(
                                                  255, 9, 197, 16),
                                              size: 16)),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Access Bank",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16.sp,
                                                  color: Color.fromARGB(
                                                      255, 12, 1, 59))),
                                          Text("20, Jan, 2020",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12.sp,
                                                  color: Colors.grey)),
                                        ],
                                      ),
                                    ]),
                                    Text("\$40,000",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.sp,
                                            color: Color.fromARGB(
                                                255, 12, 1, 59))),
                                  ]),
                              Divider(
                                thickness: 1.0,
                                color: Colors.grey[300],
                              ),
                              Container(
                                alignment: Alignment.bottomCenter,
                                child: GestureDetector(
                                  onTap: () => Navigator.pushNamed(
                                      context, '/transaction'),
                                  child: RichText(
                                    text: TextSpan(
                                      text: "View All",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.sp,
                                          color: Colors.green),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    //ll
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
