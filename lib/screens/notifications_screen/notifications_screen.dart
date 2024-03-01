import 'package:flutter/material.dart';

import '../../components/text_with_stick.dart';
import '../../utils/assets.dart';
import '../../utils/theme.dart';
import '../home_screen/categories_tile.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final appTextTheme = context.appTextTheme;
    final textTheme = context.textTheme;
    return Scaffold(
      backgroundColor: AppColors.lightColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: TextWithStick(
          Text('Bildiris', style: textTheme.labelLarge),
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 10),
          ...List.generate(
            5,
            (index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 6),
              child: CategoriesTile(
                borderColor: Colors.transparent,
                backgroundColor: AppColors.whiteColor,
                icon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 7),
                  child: Text('%', style: textTheme.labelLarge),
                ),
              ),
            ),
          ),
          const SizedBox(height: 13),
          SingleChildScrollView(
            padding: const EdgeInsets.only(left: 13),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                  3,
                  (index) => Padding(
                    padding: const EdgeInsets.only(right: 13),
                    child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: AppColors.lightOrangeColor,
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 20,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text('Offer AC Service', style: textTheme.bodySmall),
                                    const SizedBox(width: 4),
                                    AppIcons.info.svgPicture(),
                                  ],
                                ),
                                const SizedBox(height: 12),
                                Text('Get 25%', style: appTextTheme.cardLarge),
                                const SizedBox(height: 12),
                                DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: AppColors.whiteColor,
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 11,
                                      vertical: 6,
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const Text('Grab Offer'),
                                        const SizedBox(width: 9),
                                        AppIcons.chevronRight.svgPicture(
                                          color: AppColors.blackColor,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                  )),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
