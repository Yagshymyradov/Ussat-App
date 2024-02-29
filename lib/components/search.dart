import 'package:flutter/material.dart';

import '../utils/assets.dart';
import '../utils/theme.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              height: 48,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: AppColors.greyColor.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 13),
                  child: Row(
                    children: [
                      AppIcons.search.svgPicture(),
                      const SizedBox(width: 22),
                      const Expanded(child: Text('Gozle')),
                      AppIcons.clear.svgPicture(),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 18),
          AppIcons.filter.svgPicture(),
        ],
      ),
    );
  }
}
