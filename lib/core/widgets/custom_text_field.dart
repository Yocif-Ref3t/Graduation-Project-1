import 'package:flutter/material.dart';
import 'package:graduation_project1/core/constants/decorations.dart';
import 'package:graduation_project1/core/extensions/extensions.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String? errorText;
  final IconData? icon;
  final Function()? iconTap;
  final bool? obscureText;
  final String? Function(String? value)? validator;
  const CustomTextField({
    super.key,
    required this.hintText,
    this.icon,
    this.iconTap,
    required this.controller,
    this.validator,
    this.obscureText = false,
    this.errorText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      cursorColor: context.colors.primary,
      style: context.texts.bodyMedium,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validator,
      obscureText: obscureText!,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        hintText: hintText,
        errorText: errorText,
        hintStyle: context.texts.bodySmall,
        fillColor: context.colors.secondary,
        suffixIcon: GestureDetector(onTap: iconTap, child: Icon(icon, color: Colors.grey)),
        border: Decorations.textFieldBorder,
        enabledBorder: Decorations.textFieldBorder,
        focusedBorder: Decorations.textFieldBorder.copyWith(
          borderSide: BorderSide(color: context.colors.primary),
        ),
      ),
    );
  }
}
