import 'package:flutter/material.dart';

import '../../components/search.dart';
import '../../components/stick.dart';
import '../../utils/assets.dart';
import '../../utils/theme.dart';
import 'categories_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Stick(),
            const SizedBox(width: 10),
            Expanded(
              child: Text('Kategoriya', style: textTheme.labelLarge),
            ),
            Text('Gyssagly jan', style: textTheme.labelMedium),
            const SizedBox(width: 11),
            DecoratedBox(
              decoration: BoxDecoration(
                color: AppColors.orangeColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(6),
                child: AppIcons.call.svgPicture(),
              ),
            ),
          ],
        ),
        bottom: const PreferredSize(
          preferredSize: Size(double.infinity, 44),
          child: Search(),
        ),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(20),
        itemCount: 5,
        itemBuilder: (context, index) => const CategoriesTile(),
        separatorBuilder: (context, index) => const SizedBox(height: 10),
      ),
    );
  }
}
