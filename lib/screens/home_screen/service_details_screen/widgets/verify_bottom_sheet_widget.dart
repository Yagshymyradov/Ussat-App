import 'package:flutter/material.dart';

import '../../../../components/field_text.dart';
import '../../../../utils/theme.dart';

class VerifyBottomSheet extends StatelessWidget {
  const VerifyBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    final bottomPadding = MediaQuery.of(context).viewInsets.bottom + 10;
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20, bottom: bottomPadding),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 52),
          const FieldText(labelText: 'Doly adynyz'),
          const SizedBox(height: 17),
          const FieldText(labelText: 'Address'),
          const SizedBox(height: 17),
          const FieldText(labelText: 'telefon belgi'),
          const SizedBox(height: 29),
          ElevatedButton(
            onPressed: () {},
            style: const ButtonStyle(
              minimumSize: MaterialStatePropertyAll(
                Size(double.infinity, 50),
              ),
            ),
            child: Text('Tassykla', style: textTheme.headlineMedium),
          ),
        ],
      ),
    );
  }
}
