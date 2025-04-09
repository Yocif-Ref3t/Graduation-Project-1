import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project1/core/widgets/custom_app_bar.dart';

import 'widgets/change password view/change_password_view_body.dart';

class ChangePasswordView extends StatelessWidget {
  const ChangePasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "ChangePassword".tr(context: context)),
      body: const ChangePasswordViewBody(),
    );
  }
}
