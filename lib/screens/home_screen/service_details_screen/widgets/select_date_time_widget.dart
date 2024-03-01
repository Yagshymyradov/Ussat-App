import 'package:flutter/material.dart';

import '../../../../components/stick.dart';
import '../../../../utils/assets.dart';
import '../../../../utils/theme.dart';

class SelectDateTimeWidget extends StatelessWidget {
  const SelectDateTimeWidget({super.key});

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
              Text('Select your Date & Time?', style: textTheme.bodyLarge),
            ),
            const SizedBox(height: 16),
            DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColors.lightOrangeColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    AppIcons.date.svgPicture(),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('DATE', style: textTheme.headlineSmall,),
                        Text('Select your Date', style: textTheme.displaySmall,),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColors.lightBlueColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    AppIcons.time.svgPicture(),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('TIME', style: textTheme.headlineSmall,),
                        Text('Select your Time', style: textTheme.displaySmall,),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
