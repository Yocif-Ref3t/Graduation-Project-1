import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project1/core/constants/routes.dart';
import 'package:graduation_project1/core/extensions/extensions.dart';
import 'package:graduation_project1/core/widgets/custom_button.dart';

class CheckWidget extends StatelessWidget {
  const CheckWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: double.maxFinite,
      decoration: BoxDecoration(
        border: Border.all(color: context.colors.primary),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        spacing: 16,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "CheckYourSelf".tr(context: context),
            style: context.texts.titleSmall,
          ),
          CustomButton(
            text: "Check".tr(context: context),
            onTap: () {
              context.routerPush(Routes.PredictView);
            },
          ),
        ],
      ),
    );
  }
}
