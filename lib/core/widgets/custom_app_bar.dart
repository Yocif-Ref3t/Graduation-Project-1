import 'package:flutter/material.dart';
import 'package:graduation_project1/core/extensions/extensions.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            GestureDetector(
                onTap: () {
                  context.routerPop();
                },
                child: Icon(Icons.arrow_back_ios)),
            SizedBox(width: 10),
            Text(
              title,
              style: context.texts.titleSmall!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50);
}
