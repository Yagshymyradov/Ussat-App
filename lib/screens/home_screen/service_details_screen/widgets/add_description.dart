import 'package:flutter/material.dart';

import '../../../../components/field_text.dart';
import '../../../../components/text_with_stick.dart';
import '../../../../utils/theme.dart';

class AddDescription extends StatelessWidget {
  const AddDescription({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.whiteColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextWithStick(
              Text('Description', style: textTheme.bodyLarge),
            ),
            const SizedBox(height: 16),
            const FieldText(
              maxLine: 4,
            ),
          ],
        ),
      ),
    );
  }
}
