import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project1/core/widgets/custom_button.dart';
import 'package:graduation_project1/core/widgets/custom_text_field.dart';

class ChangePasswordViewBody extends StatefulWidget {
  const ChangePasswordViewBody({super.key});

  @override
  State<ChangePasswordViewBody> createState() => _ChangePasswordViewBodyState();
}

class _ChangePasswordViewBodyState extends State<ChangePasswordViewBody> {
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            CustomTextField(
              hintText: "NewPassword".tr(context: context),
              controller: newPasswordController,
              validator: (value) {
                if (value == null || value.isEmpty) return "RequiredField".tr(context: context);
                return null;
              },
            ),
            SizedBox(height: 16),
            CustomTextField(
              hintText: "ConfirmPassword".tr(context: context),
              controller: confirmPasswordController,
              validator: (value) {
                if (value == null || value.isEmpty) return "RequiredField".tr(context: context);
                if (value != newPasswordController.text) {
                  return "PasswordNotMatch".tr(context: context);
                }
                return null;
              },
            ),
            SizedBox(height: 16),
            CustomButton(
              text: "Save".tr(context: context),
              onTap: () {
                if (formKey.currentState!.validate()) {}
              },
            ),
          ],
        ),
      ),
    );
  }
}
