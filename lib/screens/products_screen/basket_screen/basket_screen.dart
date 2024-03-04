import 'package:flutter/material.dart';

import '../../../components/counter_product.dart';
import '../../../utils/assets.dart';
import '../../../utils/theme.dart';
import 'basket_tile.dart';

class BasketScreen extends StatelessWidget {
  const BasketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    final appTextTheme = context.appTextTheme;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        titleSpacing: 10,
        title: Row(
          children: [
            InkWell(
              borderRadius: BorderRadius.circular(10),
              onTap: () => Navigator.pop(context),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: AppIcons.chevronLeft.svgPicture(
                  height: 18,
                  color: AppColors.blackColor,
                ),
              ),
            ),
            const SizedBox(width: 16),
            Text(
              'Basket',
              style: textTheme.labelLarge,
            ),
          ],
        ),
        bottom: const PreferredSize(
          preferredSize: Size(double.infinity, 1),
          child: Divider(),
        ),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(24),
        itemCount: 4,
        itemBuilder: (context, index) => const BasketTile(),
        separatorBuilder: (context, index) => const Divider(height: 50),
      ),
    );
  }
}
