import 'package:bank_app_project/const/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {required this.onTap,
      // this.BorderRadius,
      this.buttonColor,
      this.textColor,
      required this.buttonText,
      super.key,
      required TextStyle style});

  VoidCallback onTap;
  Color? buttonColor;
  //final BorderRadius;
  Color? textColor;
  String buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: buttonColor ?? AppColors.deep_green,
        // borderRadius: BorderRadius.circular(BorderRadius ?? 0),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: Text(
                buttonText,
                style: TextStyle(
                    color: textColor,
                    fontSize: 16.sp,
                    //fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
