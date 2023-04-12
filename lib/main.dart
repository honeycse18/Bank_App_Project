import 'dart:async';
import 'package:bank_app_project/home_page.dart';
import 'package:bank_app_project/ui/bottom_nav_bar/Pages/wallet.dart';
import 'package:bank_app_project/ui/bottom_nav_bar/Pages/withdraw.dart';
import 'package:bank_app_project/ui/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:bank_app_project/ui/route/add_card.dart';
import 'package:bank_app_project/ui/route/add_new_bank.dart';
import 'package:bank_app_project/ui/route/dashboard.dart';
import 'package:bank_app_project/ui/route/forgetpage.dart';
import 'package:bank_app_project/ui/route/fund_wallet.2.dart';
import 'package:bank_app_project/ui/route/fund_wallet.dart';
import 'package:bank_app_project/ui/route/gotit.dart';
import 'package:bank_app_project/ui/route/login.dart';
import 'package:bank_app_project/ui/route/transactions.dart';
import 'package:bank_app_project/ui/route/withdraw_funds.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'ui/onbording_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            '/splash': (_) => Splash(),
            '/onboarding': (_) => Onboarding(),
            '/homePage': (_) => HomePage(),
            '/login': (_) => LoginPage(),
            '/forgetpage': (_) => ForgetPage(),
            '/dashboard': (_) => DashBoard(),
            '/bottomNavBar': (_) => BottomNavController(),
            '/wallet': (_) => Wallet(),
            '/withdraw': (_) => Withdraw(),
            '/addnewcard': (_) => AddCard(),
            '/fundwallet': (_) => FundWallet(),
            '/fundwallet2': (_) => FundWallet2(),
            '/gotit': (_) => GotIt(),
            '/addnewbank': (_) => AddNewBankAccount(),
            '/withdrawfunds': (_) => WithdrawFunds(),
            '/transaction': (_) => Transactions(),
          },
          initialRoute: '/splash',
        );
      },
    );
  }
}

//error ta kon screen e dekhasse..login koren
class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.push(
            context, CupertinoPageRoute(builder: (_) => Onboarding())));
  }

//
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo/image 16.png',
              height: 100.h,
              width: 100.w,
            ),
          ],
        ),
      ),
    );
  }
}
