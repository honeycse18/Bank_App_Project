import 'package:bank_app_project/const/app_colors.dart';
import 'package:bank_app_project/ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WithdrawFunds extends StatefulWidget {
  @override
  State<WithdrawFunds> createState() => _WithdrawFundsState();
}

class _WithdrawFundsState extends State<WithdrawFunds> {
  final _emailController = TextEditingController();

  var valueChoose = "-1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 216, 213, 213),
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
                              Navigator.pushNamed(context, '/addnewcard');
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
                      width: 50.w,
                    ),
                    Text(
                      "Withdraw Funds",
                      style: TextStyle(
                        fontSize: 25.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
                SizedBox(
                  height: 25.h,
                ),
                Text(
                  "Ensure to fill in the neccessary\n details of the recipient in order to\n continue",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.grey[600],
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 100.h,
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 500.h,
                      width: 450.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white),
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          //mainAxisAlignment: MainAxisAlignment.center,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 70.h,
                              width: 300.w,
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Amount",
                                style: TextStyle(
                                  fontSize: 15.sp,
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
                                  hintText: '₦ Enter Amount',
                                  hintStyle: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.deep_grey),
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
                            Column(
                              children: [
                                Container(
                                    alignment: Alignment.topLeft,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Select Account",
                                          style: TextStyle(
                                            fontSize: 15.sp,
                                            color: Colors.grey[600],
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Container(
                                          child: GestureDetector(
                                            onTap: () => Navigator.pushNamed(
                                                context, '/fundwallets'),
                                            child: RichText(
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: '+Add New',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.blue),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                                DropdownButtonFormField(
                                    decoration: InputDecoration(
                                        hoverColor: Colors.blue,
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                        ),
                                        prefixIcon: Icon(
                                            Icons.account_balance_outlined),
                                        iconColor: AppColors.deep_grey),
                                    value: valueChoose,
                                    items: [
                                      DropdownMenuItem(
                                        child: Text("938103802(Access Bank)",
                                            style: TextStyle(
                                              fontSize: 15.sp,
                                              color: AppColors.deep_grey,
                                              fontWeight: FontWeight.bold,
                                            )),
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
                                    onChanged: (v) {})
                              ],
                            ),
                            SizedBox(
                              height: 40.h,
                            ),
                            CustomButton(
                              onTap: () {
                                //s   Navigator.pushNamed(context, '/');
                              },

                              buttonText: 'PROCEED',
                              style: TextStyle(fontWeight: FontWeight.bold),
                              buttonColor: AppColors.deep_green,
                              textColor: Colors.white,
                              // BorderRadius: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: -65,
                      right: 50,
                      left: 50,
                      child: Container(
                        height: 130.h,
                        width: 200.w,
                        child: Card(
                            elevation: 5,
                            color: AppColors.deep_blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 20,
                                top: 20,
                                right: 20,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/logo/ngn.png',
                                        height: 20.h,
                                        width: 20.w,
                                      ),
                                      SizedBox(
                                        width: 2.w,
                                      ),
                                      Text(
                                        "NGN",
                                        style: TextStyle(
                                            fontSize: 18.sp,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Text(
                                    "Available Balance",
                                    style: TextStyle(
                                        fontSize: 10.sp,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "₦190,000",
                                        style: TextStyle(
                                            fontSize: 18.sp,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Icon(
                                        Icons.arrow_forward,
                                        color: Colors.grey,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        )));
  }
}
