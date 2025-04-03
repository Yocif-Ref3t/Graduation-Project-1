import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project1/core/constants/routes.dart';
import 'package:graduation_project1/core/extensions/extensions.dart';
import 'package:graduation_project1/features/profile/presentation/views/widgets/profile%20view/category_item.dart';

class SettingsViewBody extends StatelessWidget {
  const SettingsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        spacing: 16,
        children: [
          CategoryItem(
            title: "Language".tr(),
            icon: Icons.language,
            onTap: () {
              context.routerPush(Routes.languageView);
            },
          ),
          CategoryItem(
            title: "Storage".tr(),
            icon: Icons.storage,
            onTap: () {},
          ),
          CategoryItem(
            title: "AboutUs".tr(),
            icon: Icons.info_outline,
            onTap: () {},
          ),
          CategoryItem(
            title: "Help".tr(),
            icon: Icons.help_outline,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
