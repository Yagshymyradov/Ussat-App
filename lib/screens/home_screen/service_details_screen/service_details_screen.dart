import 'package:flutter/material.dart';

import '../../../utils/assets.dart';
import '../../../utils/theme.dart';
import 'widgets/add_description.dart';
import 'widgets/add_photo_widget.dart';
import 'widgets/select_date_time_widget.dart';
import 'widgets/type_of_property.dart';
import 'widgets/verify_bottom_sheet_widget.dart';

class ServicesDetailsScreen extends StatelessWidget {
  const ServicesDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    return Scaffold(
      //TODO: is it correct
      backgroundColor: AppColors.lightColor,
      appBar: AppBar(
        backgroundColor: AppColors.lightColor,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            AppIcons.chevronLeft.svgPicture(),
            const SizedBox(width: 20),
            Expanded(
              child: Text('arassachylyk', style: textTheme.displayMedium),
            ),
            AppIcons.questionCircle.svgPicture(),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          SizedBox(
            width: double.infinity,
            height: 223,
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey,
              ),
            ),
          ),
          const SizedBox(height: 7),
          const TypeOfProperty(),
          const SizedBox(height: 7),
          const AddPhotoWidget(),
          const SizedBox(height: 7),
          const AddDescription(),
          const SizedBox(height: 7),
          const SelectDateTimeWidget(),
          const SizedBox(height: 7),
          ElevatedButton(
            onPressed: () => showModalBottomSheet<void>(
              isScrollControlled: true,
              context: context,
              builder: (context) => const VerifyBottomSheet(),
            ),
            child: Text('Cagyr', style: textTheme.headlineMedium),
          ),
        ],
      ),
    );
  }
}
