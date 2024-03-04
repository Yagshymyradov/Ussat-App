import 'package:flutter/material.dart';

import '../utils/theme.dart';

class CounterProduct extends StatefulWidget {
  final bool? numBorder;
  final bool? buttonsBorder;

  const CounterProduct({
    super.key,
    this.numBorder,
    this.buttonsBorder,
  });

  @override
  State<CounterProduct> createState() => _CounterProductState();
}

class _CounterProductState extends State<CounterProduct> {
  int counter = 0;

  void updateUi() {
    setState(() {
      //no-op
    });
  }

  void onPlusButtonTap() {
    counter++;
    updateUi();
  }

  void onMinusButtonTap() {
    if (counter != 0) {
      counter--;
      updateUi();
    }
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    return Row(
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(17),
          onTap: onMinusButtonTap,
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17),
              border: widget.buttonsBorder != null ? Border.all(
                color: context.themeData.dividerColor,
              ) : null,
            ),
            child: const Padding(
              padding: EdgeInsets.all(12),
              child: Icon(Icons.remove, size: 15,),
            ),
          ),
        ),
        const SizedBox(width: 2),
        DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17),
            border: widget.numBorder != null ? Border.all(
              color: context.themeData.dividerColor,
            ) : null,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
            child: Text(
              counter.toString(),
              style: textTheme.bodyLarge,
            ),
          ),
        ),
        const SizedBox(width: 2),
        InkWell(
          borderRadius: BorderRadius.circular(17),
          onTap: onPlusButtonTap,
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17),
              border: widget.buttonsBorder != null ? Border.all(
                color: context.themeData.dividerColor,
              ) : null,
            ),
            child: const Padding(
              padding: EdgeInsets.all(12),
              child: Icon(
                Icons.add,
                color: AppColors.greenColor,
                size: 15,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
