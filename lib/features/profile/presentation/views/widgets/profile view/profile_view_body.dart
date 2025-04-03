import 'package:flutter/material.dart';
import 'profile_card.dart';
import 'category_item.dart';

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
          CategoryItem(
            icon: Icons.security,
            title: "Security",
            onTap: () {},
          ),
          CategoryItem(
            icon: Icons.person,
            title: "Account",
            onTap: () {},
          ),
          CategoryItem(
            icon: Icons.history,
            title: "History",
            onTap: () {},
          ),
          Divider(color: Colors.grey),
          CategoryItem(
            icon: Icons.logout,
            title: "Logout",
            onTap: () {},
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
