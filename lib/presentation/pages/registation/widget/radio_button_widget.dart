import 'package:flutter/material.dart';
import 'package:mediezy_lab_scan/presentation/core/app_colors.dart';

class RadioButtonWidget extends StatelessWidget {
  const RadioButtonWidget({
    super.key,
    required this.value,
    required this.groupValue,
    this.onChanged,
    required this.text,
  });
  final int value;
  final int groupValue;
  final void Function(int?)? onChanged;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(
          activeColor: kMainColor,
          value: value,
          groupValue: groupValue,
          onChanged: onChanged,
        ),
        Text(
          text,
        )
      ],
    );
  }
}
