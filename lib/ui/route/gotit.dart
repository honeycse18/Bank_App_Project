import 'package:bank_app_project/const/app_colors.dart';
import 'package:bank_app_project/ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GotIt extends StatelessWidget {
  const GotIt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.deep_blue,
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: [
            SizedBox(
              height: 100.h,
            ),
            Image.asset('assets/icons/idea 1.png'),
            SizedBox(
              height: 300.h,
            ),
            CustomButton(
                onTap: () {},
                buttonText: "Got It!",
                textColor: Colors.white,
                style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
