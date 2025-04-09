import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project1/core/extensions/extensions.dart';
import 'package:graduation_project1/core/widgets/custom_button.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Container(
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
                  "StartExamination".tr(context: context),
                  style: context.texts.titleSmall,
                ),
                CustomButton(
                  text: "Examination".tr(context: context),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
