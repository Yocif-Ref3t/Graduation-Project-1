import 'package:flutter/material.dart';
import 'package:graduation_project1/core/extensions/extensions.dart';

class LanguageItem extends StatelessWidget {
  final String title;
  final bool isSelected;
  final void Function() onTap;
  const LanguageItem({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
          color: context.colors.secondary,
          border: isSelected ? Border.all(color: context.colors.primary) : null,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: context.texts.bodyLarge,
            ),
            if (isSelected) Icon(Icons.done, color: context.colors.primary),
          ],
        ),
      ),
    );
  }
}
