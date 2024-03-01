import 'package:flutter/material.dart';

import '../utils/theme.dart';

class TextWithStick extends StatelessWidget {
  final Widget text;
  const TextWithStick(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 4,
          height: 20,
          child: ColoredBox(
            color: context.themeData.primaryColor,
          ),
        ),
        const SizedBox(width: 10),
        text,
      ],
    );
  }
}
