import 'package:flutter/material.dart';

import '../../utils/assets.dart';
import '../../utils/theme.dart';
import '../home_screen/categories_tile.dart';

class HistoryCard extends StatelessWidget {
  const HistoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    final appTextTheme = context.appTextTheme;
    final textTheme = context.textTheme;
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.whiteColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        child: Column(
          children: [
            const CategoriesTile(borderColor: Colors.transparent),
            const SizedBox(height: 13),
            const Divider(),
            const SizedBox(height: 21),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Status',
                  style: appTextTheme.cardMedium,
                ),
                DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: AppColors.orangeColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    child: Text(
                      'Confirmed',
                      style: appTextTheme.smallButton,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: AppColors.dividerColor),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: AppIcons.date.svgPicture(),
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('8:00-9:00 AM,  09 Dec', style: textTheme.displaySmall),
                    const SizedBox(width: 6),
                    Text('Schedule', style: textTheme.titleSmall),
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
