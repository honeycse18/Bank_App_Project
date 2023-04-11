import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardBox extends StatelessWidget {
  CardBox({
    super.key,
    required this.img,
    required this.title,
    required this.text,
    required this.color,
    required this.textcolor,
  });
  Color color;
  String title;
  String text;
  String img;
  Color textcolor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        elevation: 5.0,
        color: color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 5),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    img,
                    height: 15.h,
                    width: 15.w,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    text,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12.sp,
                        color: textcolor),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(title,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.sp,
                      color: textcolor)),
            ],
          ),
        ),
      ),
    );
  }
}
