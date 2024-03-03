import 'package:flutter/material.dart';

import '../../../components/counter_product.dart';
import '../../../utils/assets.dart';
import '../../../utils/theme.dart';

class ProductsDetailsScreen extends StatelessWidget {
  const ProductsDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    final appTextTheme = context.appTextTheme;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            InkWell(
              onTap: () => Navigator.pop(context),
              child: AppIcons.chevronLeft.svgPicture(
                height: 18,
                color: AppColors.blackColor,
              ),
            ),
            const SizedBox(width: 36),
            Text(
              'Detail',
              style: textTheme.labelLarge,
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.all(20),
            children: [
              const SizedBox(height: 32),
              Align(
                child: SizedBox(
                  height: 216,
                  child: AppIcons.bottleCola.pngPicture,
                ),
              ),
              const SizedBox(height: 60),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Naturel Red Apple',
                      style: textTheme.labelLarge,
                    ),
                  ),
                  const Icon(
                    Icons.favorite_border,
                    color: AppColors.borderGreyColor,
                  ),
                ],
              ),
              Text(
                '1kg, Price',
                style: appTextTheme.cardMedium,
              ),
              const SizedBox(height: 26),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CounterProduct(
                    numBorder: true,
                  ),
                  Text(r'$4.99', style: textTheme.labelLarge),
                ],
              ),
              const SizedBox(height: 28),
              const Divider(),
              const SizedBox(height: 16),
              Text('Product Detail', style: textTheme.titleMedium),
              Text(
                'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
                style: appTextTheme.cardMedium,
              ),
              const SizedBox(height: 80),
            ],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: ColoredBox(
              color: AppColors.whiteColor,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Sebede gos',
                    style: textTheme.headlineMedium,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
