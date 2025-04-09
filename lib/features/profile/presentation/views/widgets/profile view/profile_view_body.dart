import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project1/core/constants/routes.dart';
import 'package:graduation_project1/core/extensions/extensions.dart';
import 'package:graduation_project1/features/auth/data/repo/auth_repo_impl.dart';
import 'profile_card.dart';
import 'category_item.dart';

class ProfileViewBody extends StatefulWidget {
  const ProfileViewBody({super.key});

  @override
  State<ProfileViewBody> createState() => _ProfileViewBodyState();
}

class _ProfileViewBodyState extends State<ProfileViewBody> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        spacing: 16,
        children: [
          ProfileCard(),
          CategoryItem(
            icon: Icons.security,
            title: "Security".tr(context: context),
            onTap: () {
              context.routerPush(Routes.changePasswordView);
            },
          ),
          CategoryItem(
            icon: Icons.person,
            title: "Account".tr(context: context),
            onTap: () {
              context.routerPush(Routes.profileDataView);
            },
          ),
          CategoryItem(
            icon: Icons.history,
            title: "History".tr(context: context),
            onTap: () {},
          ),
          Divider(color: Colors.grey),
          CategoryItem(
            icon: Icons.logout,
            title: "Logout".tr(context: context),
            isLoading: isLoading,
            onTap: () async {
              isLoading = true;
              setState(() {});
              await AuthRepoImpl().logout();
              isLoading = false;
              setState(() {});
              if (context.mounted) context.routerGo(Routes.loginView);
            },
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
