import 'package:bank_app_project/const/app_colors.dart';
import 'package:bank_app_project/ui/bottom_nav_bar/Pages/cards.dart';
import 'package:bank_app_project/ui/bottom_nav_bar/Pages/settings.dart';
import 'package:bank_app_project/ui/bottom_nav_bar/Pages/wallet.dart';
import 'package:bank_app_project/ui/route/dashboard.dart';
import 'package:flutter/material.dart';

class BottomNavController extends StatefulWidget {
  const BottomNavController({super.key});

  @override
  State<BottomNavController> createState() => _BottomNavControllerState();
}

class _BottomNavControllerState extends State<BottomNavController> {
  int _currentIndex = 0;
  final _pages = [
    DashBoard(),
    Wallet(),
    Cards(),
    Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: AppColors.deep_green,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard_outlined), label: 'Dashboard'),
          BottomNavigationBarItem(
              icon: Icon(Icons.wallet_outlined), label: 'Wallet'),
          BottomNavigationBarItem(
              icon: Icon(Icons.credit_card_outlined), label: 'Cards'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined), label: 'Settings')
        ],
      ),
      body: _pages[_currentIndex],
    );
  }
}
