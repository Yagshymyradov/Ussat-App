import 'package:flutter/material.dart';

import '../../utils/assets.dart';
import '../../utils/theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Expanded(child: Text('All Categories')),
            AppIcons.search.svgPicture(),
            const SizedBox(width: 10),
            const Icon(Icons.shopping_basket_outlined),
          ],
        ),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(20),
        itemCount: 5,
        itemBuilder: (context, index) => DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: AppColors.easyLightGreyColor),
          ),
          child: const ListTile(
            leading: Icon(Icons.fire_truck),
            title: Text('Euro track'),
            subtitle: Text('We can pick up your europe'),

          ),
        ), separatorBuilder: (context, index) => const SizedBox(height: 10),
      ),
    );
  }
}
