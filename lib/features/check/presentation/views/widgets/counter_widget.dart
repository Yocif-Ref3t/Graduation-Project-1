import 'package:flutter/material.dart';
import 'package:graduation_project1/core/extensions/extensions.dart';
import 'package:graduation_project1/core/widgets/custom_counter.dart';

class CounterWidget extends StatelessWidget {
  final String text;
  final Function(int value) onChanged;
  const CounterWidget({
    super.key,
    required this.text,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: context.texts.titleSmall,
        ),
        CustomCounter(onChanged: onChanged),
      ],
    );
  }
}
