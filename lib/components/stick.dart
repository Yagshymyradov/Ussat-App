import 'package:flutter/material.dart';

import '../utils/theme.dart';

class Stick extends StatelessWidget {
  const Stick({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 4,
      height: 20,
      child: ColoredBox(
        color: context.themeData.primaryColor,
      ),
    );
  }
}
