import 'package:flutter/material.dart';

import '../../components/search.dart';
import '../../components/text_with_stick.dart';
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
            Expanded(
              child: TextWithStick(
                Text('Kategoriya', style: textTheme.labelLarge),
              ),
            ),
            Text('Gyssagly jan', style: textTheme.labelMedium),
            const SizedBox(width: 11),
            IconButton(
              onPressed: () {},
              icon: AppIcons.call.svgPicture(),
            ),
          ],
        ),
        bottom: const PreferredSize(
          preferredSize: Size(double.infinity, 50),
          child: Search(),
        ),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(20),
        itemCount: 5,
        itemBuilder: (context, index) => CategoriesTile(
          icon: AppIcons.repair.svgPicture(),
        ),
        separatorBuilder: (context, index) => const SizedBox(height: 10),
      ),
    );
  }
}
