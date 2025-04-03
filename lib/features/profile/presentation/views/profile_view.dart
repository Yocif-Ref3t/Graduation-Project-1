import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project1/core/widgets/page_title.dart';
import 'package:graduation_project1/features/profile/presentation/views/widgets/profile%20view/profile_view_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PageTitle(title: "Profile".tr()),
      body: const ProfileViewBody(),
    );
  }
}
