import 'package:flutter/material.dart';

import '../../utils/assets.dart';
import '../../utils/theme.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.borderGreyColor),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(13),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(child: AppIcons.bottleCola.pngPicture),
            const SizedBox(height: 10),
            const Text('Diet Coke'),
            const Text('355ml, Price'),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(r'$1.99'),
                IconButton(
                  onPressed: () {},
                  icon: AppIcons.add.svgPicture(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
