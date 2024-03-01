import 'package:flutter/material.dart';

import '../../../../utils/assets.dart';
import '../../../../utils/theme.dart';

class AddPhotoWidget extends StatelessWidget {
  const AddPhotoWidget({super.key});

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Surat gos',
                  style: textTheme.displaySmall,
                ),
                IconButton(
                  onPressed: () {},
                  icon: AppIcons.add.svgPicture(),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
