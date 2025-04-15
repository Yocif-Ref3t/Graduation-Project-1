import 'package:flutter/material.dart';
import 'package:graduation_project1/core/extensions/extensions.dart';
import 'package:graduation_project1/core/widgets/custom_text_field.dart';

class TitleInputWidget extends StatelessWidget {
  final String title;
  final TextEditingController controller;
  const TitleInputWidget({
    super.key,
    required this.title,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: context.texts.bodyLarge,
        ),
        CustomTextField(
          hintText: title,
          controller: controller,
        ),
      ],
    );
  }
}
