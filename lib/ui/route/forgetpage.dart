import 'package:bank_app_project/const/app_colors.dart';
import 'package:bank_app_project/ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetPage extends StatelessWidget {
  final _emailController = TextEditingController();

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
            Container(
              alignment: Alignment.centerLeft,
              child: CircleAvatar(
                //radius: 10.0,
                backgroundColor: AppColors.deep_green,
                child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
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
              height: 30.h,
            ),
            Image.asset(
              'assets/logo/image 16.png',
              height: 80.h,
              width: 80.w,
            ),
            SizedBox(
              height: 60.h,
            ),
            Text(
              "Forgot Password?",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
              height: 300.h,
              width: 300.w,
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Enter the email address associated with your account to recover password",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[600],
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Email Address",
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
                        prefixIcon: Icon(Icons.email_outlined),
                        prefixIconColor: Colors.green,
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
                  CustomButton(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return Dialog(
                              child: Container(
                                height: 300.h,
                                width: 350.w,
                                padding: EdgeInsets.only(
                                    top: 40, left: 5, right: 5, bottom: 20),
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
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey[900]),
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Text(
                                          "An Email has been sent to you. \n Click the link to reset your password.",
                                          style: TextStyle(
                                              fontSize: 10.sp,
                                              fontWeight: FontWeight.bold,
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
                                            onTap: () {
                                              Navigator.pushNamed(
                                                  context, '/gotit');
                                            },

                                            buttonText: 'CHECK MAIL',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 5.sp,
                                            ),
                                            buttonColor: AppColors.deep_green,
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

                    buttonText: 'RECOVER PASSWORD',
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
