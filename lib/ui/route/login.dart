import 'package:bank_app_project/const/app_colors.dart';
import 'package:bank_app_project/ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passController = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50.h,
                ),
                Image.asset(
                  'assets/logo/image 16.png',
                  height: 80.h,
                  width: 80.w,
                ),
                SizedBox(
                  height: 50.h,
                ),
                Text(
                  "Welcome Back!",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "Enter Your Details To Continue",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Container(
                  height: 350.h,
                  width: 300.w,
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Email Address",
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
                            prefixIcon: Icon(Icons.email_outlined),
                            prefixIconColor: Colors.green,
                            fillColor: Colors.transparent,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Password",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 15.sp,
                              color: Colors.grey[600],
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        child: TextField(
                          controller: _passController,
                          obscureText: true,
                          obscuringCharacter: '*',
                          style: TextStyle(fontWeight: FontWeight.bold),
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock_outline),
                            prefixIconColor: Colors.green,
                            suffixIcon: Icon(
                              Icons.visibility_outlined,
                              size: 20,
                            ),
                            fillColor: Colors.transparent,
                            filled: true,
                            focusColor: Colors.green,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: () =>
                              Navigator.pushNamed(context, '/forgetpage'),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Forget Password?',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      SizedBox(
                        height: 60.h,
                        width: 300.w,
                        child: CustomButton(
                          onTap: () {
                            Navigator.pushNamed(context, '/bottomNavBar');
                          },

                          buttonText: 'LOGIN',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.sp,
                          ),
                          buttonColor: AppColors.deep_green,
                          textColor: Colors.white,
                          // BorderRadius: 10,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        'Need an Account?',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[600]),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      child: GestureDetector(
                        onTap: () =>
                            Navigator.pushNamed(context, '/forgetpage'),
                        child: RichText(
                            text: TextSpan(children: [
                          TextSpan(
                            text: 'Try Sutraq',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.green),
                          )
                        ])),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25.h,
                ),
                Image.asset(
                  "assets/icons/fingerprint.png",
                  height: 50.h,
                  width: 50.w,
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "Tap to use fingerprint",
                  style: TextStyle(color: Colors.green),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//Color.fromARGB(255, 13, 174, 21)