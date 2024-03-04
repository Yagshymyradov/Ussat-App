import 'package:flutter/material.dart';

import 'screens/auth_screen/auth_screen.dart';
import 'screens/main_screen.dart';
import 'utils/theme.dart';

void main() {
  runApp(const UssatApp());
}

class UssatApp extends StatelessWidget {
  const UssatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const AuthScreen(),
    );
  }
}
