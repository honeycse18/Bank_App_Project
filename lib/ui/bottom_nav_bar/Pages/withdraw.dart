import 'package:bank_app_project/const/app_colors.dart';
import 'package:bank_app_project/ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Withdraw extends StatelessWidget {
  var valueChoose = "-1";

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
                          Navigator.pushNamed(context, '/bottomNavBar');
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
                  "Add New Account",
                  style: TextStyle(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                )
              ],
            ),
            SizedBox(
              height: 60.h,
            ),
            Text(
              'Ensure to fill in the neccessary details of the recipient in order to continue',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 100.h,
            ),
            Container(
              height: 300.h,
              width: 300.w,
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Currency",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[600],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  DropdownButtonFormField(
                      decoration: InputDecoration(
                          hoverColor: Colors.blue,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0.0))),
                      value: valueChoose,
                      items: [
                        DropdownMenuItem(
                          child: Text("Choose Currency"),
                          value: "-1",
                        ),
                        DropdownMenuItem(
                          child: Text("Euro"),
                          value: "1",
                        ),
                        DropdownMenuItem(
                          child: Text("Dollar"),
                          value: "2",
                        ),
                        DropdownMenuItem(
                          child: Text("Neigerian Naira"),
                          value: "3",
                        ),
                      ],
                      onChanged: (v) {}),
                  SizedBox(
                    height: 30.h,
                  ),
                  CustomButton(
                    onTap: () {
                      Navigator.pushNamed(context, '/addnewcard');
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
