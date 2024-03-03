import 'package:flutter/material.dart';

import '../../utils/assets.dart';
import '../../utils/navigation.dart';
import '../../utils/theme.dart';
import 'product_details_screen/products_details_screen.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    final appTextTheme = context.appTextTheme;
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () => navigateToScreen(context, const ProductsDetailsScreen()),
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.borderGreyColor),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(13),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                child: SizedBox(height: 71, child: AppIcons.bottleCola.pngPicture),
              ),
              const SizedBox(height: 10),
              Text(
                'Diet Coke',
                style: textTheme.titleMedium,
              ),
              Text(
                '355ml, Price',
                style: appTextTheme.cardMedium,
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(r'$1.99', style: textTheme.bodyLarge),
                  IconButton(
                    onPressed: () {},
                    icon: AppIcons.add.svgPicture(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
