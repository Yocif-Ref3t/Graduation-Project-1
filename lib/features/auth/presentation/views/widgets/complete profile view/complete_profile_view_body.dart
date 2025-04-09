import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project1/core/extensions/extensions.dart';

class CompleteProfileViewBody extends StatelessWidget {
  const CompleteProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "CompleteProfile".tr(context: context),
            style: context.texts.titleSmall!.copyWith(
              fontWeight: FontWeight.bold,
              color: context.colors.primary,
            ),
          ),
          // Center(
          //   child: C,
          // ),
          Row(),
        ],
      ),
    );
  }
}
