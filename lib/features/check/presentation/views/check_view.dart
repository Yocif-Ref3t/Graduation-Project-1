import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project1/core/widgets/custom_app_bar.dart';

import 'widgets/check_view_body.dart';

class CheckView extends StatelessWidget {
  const CheckView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "CheckYourSelf".tr(context: context)),
      body: CheckViewBody(),
    );
  }
}
