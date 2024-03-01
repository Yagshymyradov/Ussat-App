import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/theme.dart';

class FieldText extends StatelessWidget {
  final String? hintText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final int maxLine;
  final String? labelText;

  const FieldText({
    super.key,
    this.controller,
    this.validator,
    this.hintText,
    this.keyboardType,
    this.inputFormatters,
    this.maxLine = 1,
    this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    final displayMediumText = Theme.of(context).textTheme.bodyMedium;
    return TextFormField(
      keyboardType: keyboardType,
      validator: validator,
      controller: controller,
      style: displayMediumText,
      inputFormatters: inputFormatters,
      maxLines: maxLine,
      decoration: InputDecoration(
        isDense: true,
        labelText: labelText,
        contentPadding: const EdgeInsets.symmetric(horizontal: 22, vertical: 14),
        hintText: hintText,
        fillColor: maxLine > 1 ? AppColors.lightColor : Colors.transparent,
        filled: true,
      ),
    );
  }
}
