import 'package:flutter/material.dart';

import 'home_screen/homa_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final pages = [
    const HomeScreen(),
    Container(),
    Container(),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: SizedBox(
        height: 85,
        child: Theme(
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
            useLegacyColorScheme: false,
            currentIndex: currentIndex,
            type: BottomNavigationBarType.fixed,
            selectedFontSize: 12,
            selectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.w600,
              height: 3,
            ),
            unselectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.w600,
              height: 3,
            ),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.category),
                label: 'Esasy',
                activeIcon: Icon(Icons.category, color: Colors.blue,),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_border_sharp),
                label: 'Halanlarym',
                activeIcon: Icon(Icons.bookmark_border_sharp, color: Colors.blue,),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined),
                label: 'Sebedim',
                activeIcon: Icon(Icons.person_2_outlined, color: Colors.blue,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
