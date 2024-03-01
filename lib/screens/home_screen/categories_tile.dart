import 'package:flutter/material.dart';

import '../../utils/assets.dart';
import '../../utils/navigation.dart';
import '../../utils/theme.dart';
import 'service_details_screen/service_details_screen.dart';

class CategoriesTile extends StatelessWidget {
  final Color borderColor;

  const CategoriesTile({
    super.key,
    this.borderColor = AppColors.easyLightGreyColor,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    return InkWell(
      onTap: () => navigateToScreen(context, const ServicesDetailsScreen()),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: borderColor),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 11),
          child: Row(
            children: [
              ClipOval(
                child: ColoredBox(
                  color: AppColors.orangeColor.withOpacity(0.4),
                  child: Padding(
                    padding: const EdgeInsets.all(17),
                    child: AppIcons.repair.svgPicture(),
                  ),
                ),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('AC REPAIR', style: textTheme.titleMedium),
                    Text(
                      '1 sagadyn dowamynda ish  tamamlanyar',
                      style: textTheme.titleSmall,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
