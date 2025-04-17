import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project1/core/widgets/custom_app_bar.dart';
import 'widgets/check result view/predict_result_view_body.dart';

class PredictResultView extends StatelessWidget {
  const PredictResultView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "CheckResult".tr(context: context)),
      body: PredictResultViewBody(),
    );
  }
}
