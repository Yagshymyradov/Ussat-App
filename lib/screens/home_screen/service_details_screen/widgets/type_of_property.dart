import 'package:flutter/material.dart';

import '../../../../components/text_with_stick.dart';
import '../../../../utils/assets.dart';
import '../../../../utils/theme.dart';

class TypeOfProperty extends StatelessWidget {
  const TypeOfProperty({super.key});

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
              Text('Type of property', style: textTheme.bodyLarge),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(color: AppColors.lightGreyColor),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(18),
                        child: AppIcons.home.svgPicture(),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text('Home', style: textTheme.bodySmall,),
                  ],
                ),
                Column(
                  children: [
                    DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: AppColors.orangeColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(18),
                        child: AppIcons.office.svgPicture(),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text('Office', style: textTheme.bodySmall,),
                  ],
                ),
                Column(
                  children: [
                    DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(color: AppColors.lightGreyColor),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(18),
                        child: AppIcons.vila.svgPicture(),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text('Vila', style: textTheme.bodySmall,),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
