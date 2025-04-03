import 'package:flutter/material.dart';
import 'package:graduation_project1/core/extensions/extensions.dart';

class PageTitle extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const PageTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            Text(title, style: context.texts.titleMedium),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50);
}
