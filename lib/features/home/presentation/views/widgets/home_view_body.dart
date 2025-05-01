import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project1/core/extensions/extensions.dart';
import 'check_widget.dart';
import 'food_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CheckWidget(),
          SizedBox(height: 16),
          Text(
            "NutritionalAdvice".tr(),
            style: context.texts.titleSmall,
          ),
          SizedBox(height: 16),
          FoodList(),
        ],
      ),
    );
  }
}
