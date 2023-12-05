import 'package:bank_app_project/const/app_colors.dart';
import 'package:bank_app_project/ui/widgets/button.dart';
import 'package:bank_app_project/ui/widgets/visa_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddCard extends StatelessWidget {
  final _emailController = TextEditingController();
  final _cvvController = TextEditingController();
  final _dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: CircleAvatar(
                    //radius: 10.0,
                    backgroundColor: AppColors.deep_green,
                    child: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/withdraw');
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                        iconSize: 20.0,
                        color: AppColors.deep_green),
                  ),
                ),
                SizedBox(
                  width: 35.w,
                ),
                Text(
                  "Add New Bank Card",
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                )
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Text(
              "Ensure to fill in the neccessary details of the recipient in order to continue",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.grey[600],
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30.h,
            ),
            VisaCard(AppColors.deep_blue),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 320.h,
              width: 300.w,
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Card Number",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[600],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    child: TextField(
                      controller: _emailController,
                      style: TextStyle(fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                        hintText: 'Your Card Number',
                        hintStyle: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            color: AppColors.deep_grey),
                        fillColor: Colors.transparent,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 140.w,
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Expiry Date",
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  color: Colors.grey[600],
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            TextField(
                              controller: _dateController,
                              style: TextStyle(fontWeight: FontWeight.bold),
                              decoration: InputDecoration(
                                hintText: 'MM/YY',
                                hintStyle: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.deep_grey),
                                fillColor: Colors.transparent,
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 17.w,
                      ),
                      Container(
                        width: 140.w,
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "CVV",
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  color: Colors.grey[600],
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            TextField(
                              controller: _cvvController,
                              style: TextStyle(fontWeight: FontWeight.bold),
                              decoration: InputDecoration(
                                hintText: 'CVV',
                                hintStyle: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.deep_grey),
                                fillColor: Colors.transparent,
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomButton(
                    onTap: () {
                      Navigator.pushNamed(context, '/fundwallet');
                    },

                    buttonText: 'CONFIRM',
                    style: TextStyle(fontWeight: FontWeight.bold),
                    buttonColor: AppColors.deep_green,
                    textColor: Colors.white,
                    // BorderRadius: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    )));
  }
}
