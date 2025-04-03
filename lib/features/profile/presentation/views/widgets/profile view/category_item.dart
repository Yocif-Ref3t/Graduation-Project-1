import 'package:flutter/material.dart';
import 'package:graduation_project1/core/extensions/extensions.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color? color;
  final void Function() onTap;
  const CategoryItem({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(16),
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: context.colors.secondary,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Icon(icon, color: color),
            SizedBox(width: 10),
            Text(title, style: context.texts.bodyLarge!.copyWith(color: color)),
            Spacer(),
            Icon(Icons.arrow_forward_ios_rounded, color: color ?? Colors.white54)
          ],
        ),
      ),
    );
  }
}
