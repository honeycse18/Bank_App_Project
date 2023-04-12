import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../const/app_colors.dart';
import '../../widgets/visa_card_slider.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.deep_blue,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20.h),
            Text(
              'Account Settings',
              style: TextStyle(
                  fontSize: 25.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(height: 30.h),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    child: Text(
                      "OP",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    backgroundColor: Colors.deepPurple,
                  ),
                  SizedBox(width: 10.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello, Precious!",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20.sp),
                      ),
                      Text(
                        'Su/Pre123',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 177, 169, 169),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 80.w),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
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
                  padding: const EdgeInsets.only(top: 25, left: 40, right: 40),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("GENERAL",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12.sp,
                                color: Colors.grey)),
                        Divider(thickness: 1.0, color: Colors.grey[300]),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Bank Account",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.sp,
                                    color: Colors.black)),
                            Icon(Icons.arrow_forward)
                          ],
                        ),
                        Divider(thickness: 1.0, color: Colors.transparent),
                        Divider(thickness: 1.0, color: Colors.grey[300]),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("My Cards",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.sp,
                                    color: Colors.black)),
                            Icon(Icons.arrow_forward)
                          ],
                        ),
                        Divider(thickness: 1.0, color: Colors.transparent),
                        Divider(thickness: 1.0, color: Colors.grey[300]),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Change Transaction Pin",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.sp,
                                    color: Colors.black)),
                            Icon(Icons.arrow_forward)
                          ],
                        ),
                        Divider(thickness: 1.0, color: Colors.transparent),
                        Divider(thickness: 1.0, color: Colors.grey[300]),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Security",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.sp,
                                    color: Colors.black)),
                            Icon(Icons.arrow_forward)
                          ],
                        ),
                        Divider(thickness: 1.0, color: Colors.transparent),
                        Divider(thickness: 1.0, color: Colors.grey[300]),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Documents",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.sp,
                                    color: Colors.black)),
                            Icon(Icons.arrow_forward)
                          ],
                        ),
                        Divider(thickness: 1.0, color: Colors.transparent),
                        Divider(
                          thickness: 1.0,
                          color: Colors.grey[300],
                        ),
                        Text("PREFERENCES",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12.sp,
                                color: Colors.grey)),
                        Divider(thickness: 1.0, color: Colors.transparent),
                        Divider(
                          thickness: 1.0,
                          color: Colors.grey[300],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Invite Your Friends",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.sp,
                                    color: Colors.black)),
                            Icon(Icons.arrow_forward)
                          ],
                        ),
                        Divider(thickness: 1.0, color: Colors.transparent),
                        Divider(
                          thickness: 1.0,
                          color: Colors.grey[300],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Report a Bug",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.sp,
                                    color: Colors.black)),
                            Icon(Icons.arrow_forward)
                          ],
                        ),
                        Divider(thickness: 1.0, color: Colors.transparent),
                        Divider(
                          thickness: 1.0,
                          color: Colors.grey[300],
                        ),
                        Text("Notifications",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12.sp,
                                color: Colors.grey)),
                        Divider(thickness: 1.0, color: Colors.transparent),
                        Divider(
                          thickness: 1.0,
                          color: Colors.grey[300],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Get Real Time Update",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.sp,
                                    color: Colors.black)),
                            Icon(Icons.arrow_forward)
                          ],
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
    );
  }
}
