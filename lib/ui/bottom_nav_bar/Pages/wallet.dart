import 'package:bank_app_project/ui/widgets/carouselslider_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../const/app_colors.dart';
import '../../widgets/bank_history_list.dart';
import '../../widgets/button.dart';
import '../../widgets/card_box.dart';
import '../../widgets/icon_button.dart';
import '../../widgets/carouselslided.dart';

class Wallet extends StatelessWidget {
  const Wallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(26, 156, 170, 182),
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
                height: 180.h,
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
                                          width: 380.w,
                                          padding: EdgeInsets.only(
                                              top: 30,
                                              left: 5,
                                              right: 5,
                                              bottom: 10),
                                          child: Column(
                                            children: [
                                              Text(
                                                'Choose Option',
                                                style: TextStyle(
                                                    fontSize: 20.sp,
                                                    fontWeight: FontWeight.bold,
                                                    color: AppColors.deep_grey),
                                              ),
                                              Text(
                                                'Pick a card to continue',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color:
                                                        AppColors.light_grey),
                                              ),
                                              SizedBox(
                                                height: 15.h,
                                              ),
                                              Row(
                                                children: [
                                                  //check.png
                                                  Stack(
                                                    children: [
                                                      Container(
                                                        height: 96.h,
                                                        width: 89.w,
                                                        child: CardBox(
                                                          color: AppColors
                                                              .deep_blue,
                                                          text: 'NGN',
                                                          title: '₦12,000',
                                                          img:
                                                              'assets/logo/ngn.png',
                                                          textcolor:
                                                              Colors.white,
                                                        ),
                                                      ),
                                                      Positioned(
                                                          top: 0.1,
                                                          right: 0.5,
                                                          child: CircleAvatar(
                                                            backgroundColor:
                                                                Colors.white,
                                                            radius: 10,
                                                            child: Image(
                                                                image: AssetImage(
                                                                    'assets/icons/check.png')),
                                                          ))
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    width: 5.w,
                                                  ),
                                                  Container(
                                                    height: 96.h,
                                                    width: 89.w,
                                                    child: CardBox(
                                                      color: Colors.white,
                                                      text: 'GBP',
                                                      title: '£500',
                                                      img:
                                                          'assets/logo/gbp.PNG',
                                                      textcolor: Colors.black,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 5.w,
                                                  ),
                                                  Container(
                                                    height: 96.h,
                                                    width: 89.w,
                                                    child: CardBox(
                                                      color: Colors.white,
                                                      text: 'USD',
                                                      title: '\$500',
                                                      img:
                                                          'assets/logo/usd.png',
                                                      textcolor: Colors.black,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 20.h,
                                              ),
                                              CustomButton(
                                                onTap: () {},
                                                buttonText: 'Fund Wallet',
                                                style: TextStyle(
                                                    fontSize: 20.sp,
                                                    fontWeight:
                                                        FontWeight.bold),
                                                buttonColor:
                                                    AppColors.deep_green,
                                                textColor: Colors.white,
                                              )
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
                                          width: 380.w,
                                          padding: EdgeInsets.only(
                                              top: 30,
                                              left: 5,
                                              right: 5,
                                              bottom: 10),
                                          child: Column(
                                            children: [
                                              Text(
                                                'Choose Option',
                                                style: TextStyle(
                                                    fontSize: 20.sp,
                                                    fontWeight: FontWeight.bold,
                                                    color: AppColors.deep_grey),
                                              ),
                                              Text(
                                                'Pick a card to continue',
                                                style: TextStyle(
                                                    fontSize: 16.sp,
                                                    color:
                                                        AppColors.light_grey),
                                              ),
                                              SizedBox(
                                                height: 15.h,
                                              ),
                                              Row(
                                                children: [
                                                  //check.png
                                                  Stack(
                                                    children: [
                                                      Container(
                                                        height: 96.h,
                                                        width: 89.w,
                                                        child: CardBox(
                                                          color: AppColors
                                                              .deep_blue,
                                                          text: 'NGN',
                                                          title: '₦12,000',
                                                          img:
                                                              'assets/logo/ngn.png',
                                                          textcolor:
                                                              Colors.white,
                                                        ),
                                                      ),
                                                      Positioned(
                                                          top: 0.1,
                                                          right: 0.5,
                                                          child: CircleAvatar(
                                                            backgroundColor:
                                                                Colors.white,
                                                            radius: 10,
                                                            child: Image(
                                                                image: AssetImage(
                                                                    'assets/icons/check.png')),
                                                          ))
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    width: 5.w,
                                                  ),
                                                  Container(
                                                    height: 96.h,
                                                    width: 89.w,
                                                    child: CardBox(
                                                      color: Colors.white,
                                                      text: 'GBP',
                                                      title: '£500',
                                                      img:
                                                          'assets/logo/gbp.PNG',
                                                      textcolor: Colors.black,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 5.w,
                                                  ),
                                                  Container(
                                                    height: 96.h,
                                                    width: 89.w,
                                                    child: CardBox(
                                                      color: Colors.white,
                                                      text: 'USD',
                                                      title: '\$500',
                                                      img:
                                                          'assets/logo/usd.png',
                                                      textcolor: Colors.black,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 20.h,
                                              ),
                                              CustomButton(
                                                onTap: () {},
                                                buttonText: 'Send Money',
                                                style: TextStyle(
                                                    fontSize: 20.sp,
                                                    fontWeight:
                                                        FontWeight.bold),
                                                buttonColor:
                                                    AppColors.deep_green,
                                                textColor: Colors.white,
                                              )
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
                              title: 'Withdraw',
                              iconColor: Colors.white,
                            ),
                          ],
                        ),
                      ),
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
                              top: 15, left: 40, right: 40),
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
                                transactionList(
                                    "Access Bank",
                                    Icons.call_received_rounded,
                                    Color.fromARGB(255, 9, 197, 16),
                                    Color.fromARGB(255, 179, 236, 255),
                                    "28, Jan, 2020",
                                    "\$2400"),
                                Divider(
                                    thickness: 1.0, color: Colors.grey[300]),
                                transactionList(
                                    "Alpha Loans",
                                    Icons.call_made,
                                    Color.fromARGB(255, 234, 24, 9),
                                    Color.fromARGB(255, 255, 178, 178),
                                    "25, Jan, 2020",
                                    "\$10,000"),
                                Divider(
                                    thickness: 1.0, color: Colors.grey[300]),
                                transactionList(
                                    "Access Bank",
                                    Icons.call_received_rounded,
                                    Color.fromARGB(255, 9, 197, 16),
                                    Color.fromARGB(255, 179, 236, 255),
                                    "23, Jan, 2020",
                                    "\$4500,000"),
                                Divider(
                                    thickness: 1.0, color: Colors.grey[300]),
                                transactionList(
                                    "Alpha Loans",
                                    Icons.call_made,
                                    Color.fromARGB(255, 234, 24, 9),
                                    Color.fromARGB(255, 255, 178, 178),
                                    "21, Jan, 2020",
                                    "\$2,000"),
                                Divider(
                                    thickness: 1.0, color: Colors.grey[300]),
                                transactionList(
                                    "Access Bank",
                                    Icons.call_received_rounded,
                                    Color.fromARGB(255, 9, 197, 16),
                                    Color.fromARGB(255, 179, 236, 255),
                                    "18, Jan, 2020",
                                    "\$40,000"),
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
                    ),
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
