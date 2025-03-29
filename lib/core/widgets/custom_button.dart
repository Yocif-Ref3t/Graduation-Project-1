import 'package:flutter/material.dart';
import 'package:graduation_project1/core/extensions/extensions.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final void Function() onTap;
  final Color? background;
  final Color? foreground;
  final double? height;
  final double? width;
  final double? evaluation;
  final bool? isLoading;
  const CustomButton({
    super.key,
    this.height = 30,
    this.width = double.maxFinite,
    required this.text,
    required this.onTap,
    this.background,
    this.evaluation,
    this.foreground,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isLoading! ? null : onTap,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(
          background ?? context.colors.primary,
        ),
        fixedSize: WidgetStateProperty.all(Size(width!, height!)),
        elevation: WidgetStateProperty.all(evaluation ?? 0),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            side: BorderSide(color: context.colors.primary),
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
      child: isLoading!
          ? SizedBox(
              height: 20,
              width: 20,
              child: CircularProgressIndicator(
                color: context.colors.onPrimary,
              ),
            )
          : Text(
              text,
              style: context.texts.bodyMedium!.copyWith(
                fontWeight: FontWeight.w700,
                color: foreground ?? context.colors.onPrimary,
              ),
            ),
    );
  }
}
