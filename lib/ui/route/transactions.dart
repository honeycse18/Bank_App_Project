import 'package:bank_app_project/const/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'bank_history_list.dart';

class Transactions extends StatefulWidget {
  Transactions({super.key});

  @override
  State<Transactions> createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  var valueChoose = "-1";
  List<String> items = [
    "ALL TRANSACTIONS",
    "  DETAILS",
    "CREDITS",
  ];

  /// List of body icon
  // List<dynamic> transactionlist = [
  //   transactionList(
  //       "Access Bank",
  //       Icons.call_received_rounded,
  //       Color.fromARGB(255, 9, 197, 16),
  //       Color.fromARGB(255, 179, 236, 255),
  //       "28, Jan, 2020",
  //       "\$2400"),
  //   transactionList(
  //       "Access Bank",
  //       Icons.call_received_rounded,
  //       Color.fromARGB(255, 9, 197, 16),
  //       Color.fromARGB(255, 179, 236, 255),
  //       "28, Jan, 2020",
  //       "\$2400"),
  //   transactionList(
  //       "Alpha Loans",
  //       Icons.call_made,
  //       Color.fromARGB(255, 234, 24, 9),
  //       Color.fromARGB(255, 255, 178, 178),
  //       "25, Jan, 2020",
  //       "\$10,000"),
  // ];
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 200.h,
            color: Color.fromARGB(255, 230, 230, 235),
            child: Column(
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
                  child: Row(
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
                        width: 40.h,
                      ),
                      Text(
                        "Transaction History",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 50, right: 50),
                  child: DropdownButtonFormField(
                      decoration: InputDecoration(
                          hoverColor: AppColors.deep_green,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0.0))),
                      value: valueChoose,
                      items: [
                        DropdownMenuItem(
                          child: Text(
                            "Naira Account: ₦190,000",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18.sp),
                          ),
                          value: "-1",
                        ),
                        DropdownMenuItem(
                          child: Text(
                            "Euro",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18.sp),
                          ),
                          value: "1",
                        ),
                        DropdownMenuItem(
                          child: Text(
                            "Dollar",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18.sp),
                          ),
                          value: "2",
                        ),
                        DropdownMenuItem(
                          child: Text(
                            "Neigerian Naira",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18.sp),
                          ),
                          value: "3",
                        ),
                      ],
                      onChanged: (v) {}),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: Container(
              width: 600.w,
              height: 700.h,
              // margin: const EdgeInsets.all(5),
              child: Column(
                children: [
                  /// CUSTOM TABBAR
                  SizedBox(
                    width: 400.w,
                    height: 80,
                    child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemCount: items.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (ctx, index) {
                          return Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    current = index;
                                  });
                                },
                                child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 300),
                                  //margin: const EdgeInsets.all(5),
                                  width: 125.w,
                                  height: 45.h,
                                  child: Center(
                                    child: Text(
                                      items[index],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: current == index
                                              ? Colors.blue
                                              : Colors.grey),
                                    ),
                                  ),
                                ),
                              ),
                              Visibility(
                                  visible: current == index,
                                  child: Container(
                                    width: 120.w,
                                    height: 2.h,
                                    decoration: const BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.rectangle),
                                  ))
                            ],
                          );
                        }),
                  ),

                  /// MAIN BODY
                  Container(
                    width: double.infinity,
                    height: 550.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        transactionList(
                            "Access Bank",
                            Icons.call_received_rounded,
                            Color.fromARGB(255, 9, 197, 16),
                            Color.fromARGB(255, 179, 236, 255),
                            "28, Jan, 2020",
                            "₦2400"),
                        Divider(thickness: 1.0, color: Colors.grey[300]),
                        transactionList(
                            "Alpha Loans",
                            Icons.call_made,
                            Color.fromARGB(255, 234, 24, 9),
                            Color.fromARGB(255, 255, 178, 178),
                            "25, Jan, 2020",
                            "₦10,000"),
                        Divider(thickness: 1.0, color: Colors.grey[300]),
                        transactionList(
                            "Access Bank",
                            Icons.call_received_rounded,
                            Color.fromARGB(255, 9, 197, 16),
                            Color.fromARGB(255, 179, 236, 255),
                            "23, Jan, 2020",
                            "₦4500,000"),
                        Divider(thickness: 1.0, color: Colors.grey[300]),
                        transactionList(
                            "Alpha Loans",
                            Icons.call_made,
                            Color.fromARGB(255, 234, 24, 9),
                            Color.fromARGB(255, 255, 178, 178),
                            "21, Jan, 2020",
                            "₦2,000"),
                        Divider(thickness: 1.0, color: Colors.grey[300]),
                        transactionList(
                            "Access Bank",
                            Icons.call_received_rounded,
                            Color.fromARGB(255, 9, 197, 16),
                            Color.fromARGB(255, 179, 236, 255),
                            "18, Jan, 2020",
                            "₦40,000"),

                        ///kk
                        Divider(thickness: 1.0, color: Colors.grey[300]),
                        transactionList(
                            "Access Bank",
                            Icons.call_received_rounded,
                            Color.fromARGB(255, 9, 197, 16),
                            Color.fromARGB(255, 179, 236, 255),
                            "17, Jan, 2020",
                            "₦204,400"),
                        Divider(thickness: 1.0, color: Colors.grey[300]),
                        transactionList(
                            "Alpha Loans",
                            Icons.call_made,
                            Color.fromARGB(255, 234, 24, 9),
                            Color.fromARGB(255, 255, 178, 178),
                            "15, Jan, 2020",
                            "₦102,000"),
                        Divider(thickness: 1.0, color: Colors.grey[300]),
                        transactionList(
                            "Access Bank",
                            Icons.call_received_rounded,
                            Color.fromARGB(255, 9, 197, 16),
                            Color.fromARGB(255, 179, 236, 255),
                            "14, Jan, 2020",
                            "₦4500,000"),
                        Divider(thickness: 1.0, color: Colors.grey[300]),
                        transactionList(
                            "Alpha Loans",
                            Icons.call_made,
                            Color.fromARGB(255, 234, 24, 9),
                            Color.fromARGB(255, 255, 178, 178),
                            "13, Jan, 2020",
                            "₦2100,000"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
