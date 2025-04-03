import 'package:flutter/material.dart';
import 'profile_card.dart';
import 'profile_category_item.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        spacing: 16,
        children: [
          ProfileCard(),
          ProfileCategoryItem(
            icon: Icons.security,
            title: "Security",
          ),
          ProfileCategoryItem(
            icon: Icons.person,
            title: "Account",
          ),
          ProfileCategoryItem(
            icon: Icons.history,
            title: "History",
          ),
          Divider(color: Colors.grey),
          ProfileCategoryItem(
            icon: Icons.logout,
            title: "Logout",
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
