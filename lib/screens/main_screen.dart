import 'package:flutter/material.dart';

import '../utils/assets.dart';
import '../utils/theme.dart';
import 'history_screen/history_screen.dart';
import 'home_screen/home_screen.dart';
import 'notifications_screen/notifications_screen.dart';
import 'products_screen/products_screen.dart';
import 'profile_screen/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final pages = [
    const HomeScreen(),
    const HistoryScreen(),
    const NotificationsScreen(),
    const ProductsScreen(),
    const ProfileScreen(),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          onTap: (value) {
            currentIndex = value;
            setState(() {
              //no-op
            });
          },
          elevation: 0,
          backgroundColor: AppColors.whiteColor,
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: AppIcons.category.svgPicture(),
              label: '',
              activeIcon: AppIcons.category.svgPicture(color: AppColors.orangeColor),
            ),
            BottomNavigationBarItem(
              icon: AppIcons.history.svgPicture(),
              label: '',
              activeIcon: AppIcons.history.svgPicture(color: AppColors.orangeColor),
            ),
            BottomNavigationBarItem(
              icon: AppIcons.notification.svgPicture(),
              label: '',
              activeIcon: AppIcons.notification.svgPicture(color: AppColors.orangeColor),
            ),
            BottomNavigationBarItem(
              icon: AppIcons.products.svgPicture(),
              label: '',
              activeIcon: AppIcons.products.svgPicture(color: AppColors.orangeColor),
            ),
            BottomNavigationBarItem(
              icon: AppIcons.person.svgPicture(),
              label: '',
              activeIcon: AppIcons.person.svgPicture(color: AppColors.orangeColor),
            ),
          ],
        ),
      ),
    );
  }
}
