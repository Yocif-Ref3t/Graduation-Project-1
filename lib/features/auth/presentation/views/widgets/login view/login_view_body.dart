import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project1/core/constants/routes.dart';
import 'package:graduation_project1/core/extensions/extensions.dart';
import 'package:graduation_project1/core/widgets/custom_button.dart';
import 'package:graduation_project1/core/widgets/custom_text_field.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
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
            "Login".tr(),
            style: context.texts.titleSmall!.copyWith(
              fontWeight: FontWeight.bold,
              color: context.colors.primary,
            ),
          ),
          SizedBox(height: 5),
          Text(
            "LoginDesc".tr(),
            style: context.texts.bodySmall!.copyWith(letterSpacing: 2),
          ),
          SizedBox(height: 16),
          CustomTextField(
            hintText: "Email".tr(),
            icon: Icons.mail,
            controller: emailController,
          ),
          SizedBox(height: 16),
          CustomTextField(
            hintText: "Password".tr(),
            icon: Icons.visibility,
            controller: emailController,
          ),
          SizedBox(height: 10),
          Text(
            "ForgotPassword".tr(),
            style: context.texts.bodySmall!.copyWith(
              color: context.colors.primary,
            ),
          ),
          SizedBox(height: 16),
          CustomButton(
            text: "Login".tr(),
            onTap: () {},
          ),
          SizedBox(height: 16),
          Row(
            children: [
              Expanded(child: Divider(color: Colors.grey)),
              SizedBox(width: 10),
              Text("OR".tr(), style: context.texts.bodySmall),
              SizedBox(width: 10),
              Expanded(child: Divider(color: Colors.grey)),
            ],
          ),
          SizedBox(height: 16),
          CustomButton(
            text: "CreateAccount".tr(),
            background: Colors.transparent,
            onTap: () {
              context.goPush(Routes.registerView);
            },
          ),
        ],
      ),
    );
  }
}
