import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project1/core/widgets/page_title.dart';

import 'widgets/settings view/settings_view_body.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PageTitle(title: "Settings".tr(context: context)),
      body: const SettingsViewBody(),
    );
  }
}
