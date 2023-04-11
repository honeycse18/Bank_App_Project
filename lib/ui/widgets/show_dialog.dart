import 'package:bank_app_project/ui/widgets/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../const/app_colors.dart';
import 'card_box.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.h,
      width: 380.w,
      padding: EdgeInsets.only(top: 30, left: 10, right: 10, bottom: 10),
      child: Column(
        children: [
          Text(
            'Choose Option',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColors.deep_grey),
          ),
          Text(
            'Pick a card to continue',
            style: TextStyle(fontSize: 16, color: AppColors.light_grey),
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
                      color: AppColors.deep_blue,
                      text: 'NGN',
                      title: '₦12,000',
                      img: 'assets/logo/ngn.png',
                      textcolor: Colors.white,
                    ),
                  ),
                  Positioned(
                      top: 0.1,
                      right: 0.5,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 10,
                        child:
                            Image(image: AssetImage('assets/icons/check.png')),
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
                  img: 'assets/logo/gbp.PNG',
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
                  img: 'assets/logo/usd.png',
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
            buttonText: 'Withdraw Fund',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            buttonColor: AppColors.deep_green,
            textColor: Colors.white,
          )
        ],
      ),
    );
  }
}
