import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project1/core/extensions/extensions.dart';
import 'package:graduation_project1/core/widgets/custom_button.dart';
import 'package:graduation_project1/core/widgets/custom_date_widget.dart';
import 'package:graduation_project1/core/widgets/custom_text_field.dart';
import 'package:graduation_project1/core/widgets/gender_widget.dart';

class RegisterViewBody extends StatefulWidget {
  const RegisterViewBody({super.key});

  @override
  State<RegisterViewBody> createState() => _RegisterViewBodyState();
}

class _RegisterViewBodyState extends State<RegisterViewBody> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              "AppName".tr(),
              style: context.texts.titleMedium,
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Register".tr(),
            style: context.texts.titleSmall!.copyWith(
              fontWeight: FontWeight.bold,
              color: context.colors.primary,
            ),
          ),
          SizedBox(height: 5),
          Text(
            "RegisterDesc".tr(),
            style: context.texts.bodySmall!.copyWith(letterSpacing: 2),
          ),
          SizedBox(height: 16),
          Row(
            spacing: 16,
            children: [
              Expanded(
                child: CustomTextField(
                  hintText: "FirstName".tr(),
                  controller: firstNameController,
                ),
              ),
              Expanded(
                child: CustomTextField(
                  hintText: "LastName".tr(),
                  controller: lastNameController,
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          CustomTextField(
            hintText: "Email".tr(),
            controller: emailController,
          ),
          SizedBox(height: 16),
          CustomTextField(
            hintText: "Password".tr(),
            controller: emailController,
          ),
          SizedBox(height: 16),
          CustomDateWidget(
            hint: "Birthdate".tr(),
            onChanged: (date) {},
          ),
          SizedBox(height: 16),
          GenderWidget(
            onChanged: (gender) {},
          ),
          SizedBox(height: 16),
          CustomButton(
            text: "CreateAccount".tr(),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
