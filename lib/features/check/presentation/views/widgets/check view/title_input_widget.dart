import 'package:flutter/material.dart';
import 'package:graduation_project1/core/extensions/extensions.dart';
import 'package:graduation_project1/core/widgets/custom_text_field.dart';

class TitleInputWidget extends StatelessWidget {
  final String title;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  const TitleInputWidget({
    super.key,
    required this.title,
    required this.controller,
    this.validator,
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
          validator: validator,
          type: TextInputType.number,
          controller: controller,
        ),
      ],
    );
  }
}
