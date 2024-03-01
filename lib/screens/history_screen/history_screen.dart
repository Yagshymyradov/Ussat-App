import 'package:flutter/material.dart';

import '../../components/text_with_stick.dart';
import '../../utils/theme.dart';
import 'history_card.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    return Scaffold(
      backgroundColor: AppColors.lightColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: TextWithStick(
          Text('Taryh', style: textTheme.labelLarge),
        ),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemBuilder: (context, index) => const HistoryCard(),
        separatorBuilder: (context, index) => const SizedBox(
          height: 13,
        ),
        itemCount: 5,
      ),
    );
  }
}
