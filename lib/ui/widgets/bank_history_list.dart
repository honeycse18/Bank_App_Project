import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Icon(Icons.call_received_rounded,
//   color: Color.fromARGB(255, 9, 197, 16), size: 16)),
Widget transactionList(title, icon, iconColor, backColor, text1, text2) {
  return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
    Row(children: [
      CircleAvatar(
          maxRadius: 16,
          // backgroundColor: Color.fromARGB(255, 179, 236, 255),
          backgroundColor: backColor,
          child: Icon(icon, color: iconColor, size: 16)),
      SizedBox(
        width: 10.w,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.sp,
                  color: Color.fromARGB(255, 12, 1, 59))),
          Text(text1,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12.sp,
                  color: Colors.grey)),
        ],
      ),
    ]),
    Text(text2,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.sp,
            color: Color.fromARGB(255, 12, 1, 59))),
  ]);
}
