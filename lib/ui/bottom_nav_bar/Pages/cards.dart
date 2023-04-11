import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../const/app_colors.dart';
import '../../widgets/bank_history_list.dart';
import '../../widgets/visa_card_slider.dart';

class Cards extends StatelessWidget {
  const Cards({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 214, 209, 209),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20.h),
            Text(
              'My Cards',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(height: 30.h),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Column(children: [
                // SizedBox(height: 30.h),
                Container(
                  height: 250.h,
                  child: Visa_Card_Slider(),
                )
              ]),
            ),
            // SizedBox(height: 30.h),

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
                  padding: const EdgeInsets.only(top: 30, left: 40, right: 40),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Recent Transactions",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.sp,
                                color: Colors.grey[900])),
                        Divider(thickness: 1.0, color: Colors.grey[300]),
                        transactionList(
                            "Access Bank",
                            Icons.call_received_rounded,
                            Color.fromARGB(255, 9, 197, 16),
                            Color.fromARGB(255, 179, 236, 255),
                            "28, Jan, 2020",
                            "\$2400"),
                        Divider(thickness: 1.0, color: Colors.grey[300]),
                        transactionList(
                            "Alpha Loans",
                            Icons.call_made,
                            Color.fromARGB(255, 234, 24, 9),
                            Color.fromARGB(255, 255, 178, 178),
                            "25, Jan, 2020",
                            "\$10,000"),
                        Divider(thickness: 1.0, color: Colors.grey[300]),
                        transactionList(
                            "Access Bank",
                            Icons.call_received_rounded,
                            Color.fromARGB(255, 9, 197, 16),
                            Color.fromARGB(255, 179, 236, 255),
                            "23, Jan, 2020",
                            "\$4500,000"),
                        Divider(thickness: 1.0, color: Colors.grey[300]),
                        transactionList(
                            "Alpha Loans",
                            Icons.call_made,
                            Color.fromARGB(255, 234, 24, 9),
                            Color.fromARGB(255, 255, 178, 178),
                            "21, Jan, 2020",
                            "\$2,000"),
                        Divider(thickness: 1.0, color: Colors.grey[300]),
                        transactionList(
                            "Access Bank",
                            Icons.call_received_rounded,
                            Color.fromARGB(255, 9, 197, 16),
                            Color.fromARGB(255, 179, 236, 255),
                            "18, Jan, 2020",
                            "\$40,000"),
                        Divider(
                          thickness: 1.0,
                          color: Colors.grey[300],
                        ),
                        Container(
                          alignment: Alignment.bottomCenter,
                          child: GestureDetector(
                            onTap: () =>
                                Navigator.pushNamed(context, '/transaction'),
                            child: RichText(
                              text: TextSpan(
                                text: "View All",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.sp,
                                    color: Colors.green),
                              ),
                            ),
                          ),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
