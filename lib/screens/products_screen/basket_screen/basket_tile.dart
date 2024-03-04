import 'package:flutter/material.dart';

import '../../../components/counter_product.dart';
import '../../../utils/assets.dart';
import '../../../utils/theme.dart';

class BasketTile extends StatelessWidget {
  const BasketTile({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    final appTextTheme = context.appTextTheme;
    return Row(
      children: [
        SizedBox(
          width: 61,
          height: 56,
          child: AppIcons.bottleCola.pngPicture,
        ),
        const SizedBox(width: 28),
        Expanded(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Diet Coke',
                        style: textTheme.titleMedium,
                      ),
                      Text(
                        '355ml, Price',
                        style: appTextTheme.cardMedium,
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Icon(
                      Icons.close,
                      color: AppColors.borderGreyColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CounterProduct(
                    buttonsBorder: true,
                  ),
                  Text(r'$1.99', style: textTheme.bodyLarge),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
