import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../const/app_colors.dart';

Widget VisaCard(Color color) {
  return Container(
    height: 250.h,
    width: 450.w,
    child: Card(
        elevation: 5,
        color: color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            top: 15,
            right: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "VISA",
                style: TextStyle(
                    fontSize: 20.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "CARD NUMBER",
                style: TextStyle(
                    fontSize: 10.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "*** *** *** *379",
                style: TextStyle(
                    fontSize: 18.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "CARD HOLDER NAME",
                    style: TextStyle(
                        fontSize: 10.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Expire Date",
                    style: TextStyle(
                        fontSize: 10.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Precious Ogar",
                    style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "02/25",
                    style: TextStyle(
                        fontSize: 10.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        )),
  );
}
