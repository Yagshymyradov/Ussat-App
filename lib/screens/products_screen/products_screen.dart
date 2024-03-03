import 'package:flutter/material.dart';

import '../../components/search.dart';
import '../../components/text_with_stick.dart';
import '../../utils/assets.dart';
import '../../utils/theme.dart';
import 'product_card.dart';

List<String> categories = [
  'santehnik',
  'elekrik',
  'mashyn',
  'arassa',
  'haly yuw',
  'arassa',
  'haly yuw',
];

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    return DefaultTabController(
      length: categories.length,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Expanded(
                child: TextWithStick(
                  Text('Harytlar', style: textTheme.labelLarge),
                ),
              ),
              AppIcons.basket.svgPicture(),
              const SizedBox(width: 4),
            ],
          ),
          bottom: PreferredSize(
            preferredSize: const Size(double.infinity, 85),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Search(),
                TabBar(
                  isScrollable: true,
                  tabs: categories.map((e) => Text(e)).toList(growable: false),
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: categories
              .map(
                (e) => GridView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 20),
                  itemCount: 10,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 14,
                    childAspectRatio: 3 / 3.65,
                  ),
                  itemBuilder: (context, index) => const ProductCard(),
                ),
              )
              .toList(growable: false),
        ),
      ),
    );
  }
}
