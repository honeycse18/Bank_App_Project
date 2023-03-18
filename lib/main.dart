import 'dart:async';
import 'package:bank_app_project/home_page.dart';
import 'package:bank_app_project/ui/route/forgetpage.dart';
import 'package:bank_app_project/ui/route/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ui/onbording_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/splash': (_) => Splash(),
        '/onboarding': (_) => Onboarding(),
        '/homePage': (_) => HomePage(),
        '/login': (_) => LoginPage(),
        '/forgetpage': (_) => ForgetPage(),
      },
      initialRoute: '/splash',
    );
  }
}

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
              height: 100,
              width: 100,
            ),
          ],
        ),
      ),
    );
  }
}
