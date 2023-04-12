import 'package:bank_app_project/const/app_colors.dart';
import 'package:bank_app_project/ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddNewBankAccount extends StatefulWidget {
  @override
  State<AddNewBankAccount> createState() => _AddNewBankAccountState();
}

class _AddNewBankAccountState extends State<AddNewBankAccount> {
  final _emailController = TextEditingController();
  final _numberController = TextEditingController();
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
                      width: 60.w,
                    ),
                    Text(
                      "Add New Bank\n Account",
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
                  "Ensure to fill in the neccessary details of the recipient in order to continue",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.grey[600],
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 80.h,
                ),

                //Middle Container

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
                        Column(
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Bank",
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  color: Colors.grey[600],
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            DropdownButtonFormField(
                                decoration: InputDecoration(
                                    hoverColor: Colors.blue,
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(0.0))),
                                value: valueChoose,
                                items: [
                                  DropdownMenuItem(
                                    child: Text(
                                      "Select Bank",
                                      style: TextStyle(
                                        fontSize: 18.sp,
                                        color: AppColors.deep_grey,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
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
                          height: 30.h,
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Account Number",
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
                              hintText: 'Your Account Number',
                              hintStyle: TextStyle(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.deep_grey),
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
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Registered Phone Number",
                            style: TextStyle(
                              fontSize: 15.sp,
                              color: Colors.grey[600],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          child: TextField(
                            controller: _numberController,
                            style: TextStyle(fontWeight: FontWeight.bold),
                            decoration: InputDecoration(
                              hintText: 'Your Phone Number',
                              hintStyle: TextStyle(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.deep_grey),
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50.h,
                        ),
                        CustomButton(
                          onTap: () {
                            Navigator.pushNamed(context, '/withdrawfunds');
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
                )
              ],
            ),
          ),
        )));
  }
}
