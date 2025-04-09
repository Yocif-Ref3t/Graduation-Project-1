import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project1/core/widgets/custom_text_field.dart';

class ProfileDataViewBody extends StatefulWidget {
  const ProfileDataViewBody({super.key});

  @override
  State<ProfileDataViewBody> createState() => _ProfileDataViewBodyState();
}

class _ProfileDataViewBodyState extends State<ProfileDataViewBody> {
  final TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        spacing: 16,
        children: [
          CustomTextField(
            hintText: "Email".tr(context: context),
            controller: emailController,
          ),
          CustomTextField(
            hintText: "Email".tr(context: context),
            controller: emailController,
          ),
        ],
      ),
    );
  }
}
