import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../const/app_colors.dart';
import '../../widgets/button.dart';
import '../../widgets/carouselslided.dart';

class Wallet extends StatelessWidget {
  const Wallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 30.h),
              
              SizedBox(height: 30.h),
              Expanded(
                child: Container(
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20)),
                    color: AppColors.deep_green,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 35, right: 35, top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.black,
                                  maxRadius: 35,
                                  child: IconButton(
                                    iconSize: 35.0,
                                    icon: Icon(Icons.wallet_outlined),
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
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              fontSize: 20.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color: Colors
                                                                  .grey[900]),
                                                        ),
                                                        SizedBox(
                                                          height: 10.h,
                                                        ),
                                                        Text(
                                                          "An Email has been sent to you. \n Click the link to reset your password.",
                                                          style: TextStyle(
                                                              fontSize: 10.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color:
                                                                  Colors.grey),
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                        SizedBox(
                                                          height: 20.h,
                                                        ),
                                                        SizedBox(
                                                          height: 60.h,
                                                          width: 200.w,
                                                          child: CustomButton(
                                                            onTap: () {},

                                                            buttonText:
                                                                'CHECK MAIL',
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 5.sp,
                                                            ),
                                                            buttonColor:
                                                                AppColors
                                                                    .deep_green,
                                                            textColor:
                                                                Colors.white,
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
                                  ),
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Container(
                                  child: Text("Fund Wallet",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.sp,
                                          color: Colors.white)),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                CircleAvatar(
                                    backgroundColor: Colors.black,
                                    maxRadius: 35,
                                    child: IconButton(
                                      iconSize: 35.0,
                                      icon: Icon(Icons.send_to_mobile_sharp),
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
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                                fontSize: 20.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Colors
                                                                    .grey[900]),
                                                          ),
                                                          SizedBox(
                                                            height: 10.h,
                                                          ),
                                                          Text(
                                                            "An Email has been sent to you. \n Click the link to reset your password.",
                                                            style: TextStyle(
                                                                fontSize: 10.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Colors
                                                                    .grey),
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                          SizedBox(
                                                            height: 20.h,
                                                          ),
                                                          SizedBox(
                                                            height: 60.h,
                                                            width: 200.w,
                                                            child: CustomButton(
                                                              onTap: () {},

                                                              buttonText:
                                                                  'CHECK MAIL',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 5.sp,
                                                              ),
                                                              buttonColor:
                                                                  AppColors
                                                                      .deep_green,
                                                              textColor:
                                                                  Colors.white,
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
                                    )),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Container(
                                  child: Text("Send Money",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.sp,
                                          color: Colors.white)),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                CircleAvatar(
                                    backgroundColor: Colors.black,
                                    maxRadius: 35,
                                    // minRadius: 15,
                                    child: IconButton(
                                      icon: Icon(Icons.send_to_mobile_sharp),
                                      iconSize: 35.0,
                                      onPressed: () {
                                        Navigator.pushNamed(
                                            context, '/withdraw');
                                      },
                                    )),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Container(
                                  child: Text("Withdraw",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.sp,
                                          color: Colors.white)),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Expanded(
                        child: Container(
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                topLeft: Radius.circular(20)),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 30, left: 40, right: 40),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Recent Transactions",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.sp,
                                          color: Colors.grey[900])),
                                  Divider(
                                      thickness: 1.0, color: Colors.grey[300]),
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
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 16.sp,
                                                        color: Color.fromARGB(
                                                            255, 12, 1, 59))),
                                                Text("28, Jan, 2020",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
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
                                  Divider(
                                      thickness: 1.0, color: Colors.grey[300]),
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
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 16.sp,
                                                        color: Color.fromARGB(
                                                            255, 12, 1, 59))),
                                                Text("25, Jan, 2020",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 12.sp,
                                                        color: Colors.grey)),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Text("\$10,000",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16.sp,
                                                color: Color.fromARGB(
                                                    255, 12, 1, 59))),
                                      ]),
                                  Divider(
                                      thickness: 1.0, color: Colors.grey[300]),
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
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 16.sp,
                                                      color: Color.fromARGB(
                                                          255, 12, 1, 59))),
                                              Text("23, Jan, 2020",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 12.sp,
                                                      color: Colors.grey)),
                                            ],
                                          ),
                                        ]),
                                        Text("\$4500,000",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16.sp,
                                                color: Color.fromARGB(
                                                    255, 12, 1, 59))),
                                      ]),
                                  Divider(
                                      thickness: 1.0, color: Colors.grey[300]),
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
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 16.sp,
                                                      color: Color.fromARGB(
                                                          255, 12, 1, 59))),
                                              Text("21, Jan, 2020",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 12.sp,
                                                      color: Colors.grey)),
                                            ],
                                          ),
                                        ]),
                                        Text("\$2000",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16.sp,
                                                color: Color.fromARGB(
                                                    255, 12, 1, 59))),
                                      ]),
                                  Divider(
                                      thickness: 1.0, color: Colors.grey[300]),
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
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 16.sp,
                                                      color: Color.fromARGB(
                                                          255, 12, 1, 59))),
                                              Text("20, Jan, 2020",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
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
                                      thickness: 1.0, color: Colors.grey[300]),
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
                                                    255,
                                                    234,
                                                    24,
                                                    9,
                                                  ),
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
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 16.sp,
                                                      color: Color.fromARGB(
                                                          255, 12, 1, 59))),
                                              Text("18, Jan, 2020",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 12.sp,
                                                      color: Colors.grey)),
                                            ],
                                          ),
                                        ]),
                                        Text("\$400",
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
                                    child: Text("View All",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.sp,
                                            color: Colors.green)),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
