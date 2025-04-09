import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project1/core/widgets/custom_app_bar.dart';

import 'widgets/profile data view/profile_data_view_body.dart';

class ProfileDataView extends StatelessWidget {
  const ProfileDataView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Profile".tr(context: context)),
      body: const ProfileDataViewBody(),
    );
  }
}
