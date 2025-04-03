import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project1/core/constants/routes.dart';
import 'package:graduation_project1/core/extensions/extensions.dart';
import 'package:graduation_project1/core/widgets/custom_button.dart';
import 'package:graduation_project1/core/widgets/custom_text_field.dart';
import 'package:graduation_project1/features/auth/presentation/manager/login%20cubit/login_cubit.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  LoginCubit get cubit => BlocProvider.of(context);
  bool isLoading = false, showPassword = false;
  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginLoading) {
          isLoading = true;
          setState(() {});
        } else if (state is LoginSuccess) {
          isLoading = false;
          setState(() {});
          context.routerPush(Routes.profileView);
        } else if (state is LoginFailure) {
          isLoading = false;
          setState(() {});
          context.showFailure(state.message);
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: formKey,
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
                validator: (value) {
                  if (value == null || value.isEmpty) return "EmailDesc".tr();
                  if (!value.isEmail()) return "ValidMail".tr();
                  return null;
                },
                controller: emailController,
              ),
              SizedBox(height: 16),
              CustomTextField(
                hintText: "Password".tr(),
                obscureText: !showPassword,
                icon: showPassword ? Icons.visibility : Icons.visibility_off,
                validator: (value) {
                  if (value == null || value.isEmpty) return "PasswordDesc".tr();
                  return null;
                },
                iconTap: () {
                  showPassword = !showPassword;
                  setState(() {});
                },
                controller: passwordController,
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  context.routerPush(Routes.resetPasswordView);
                },
                child: Text(
                  "ForgotPassword".tr(),
                  style: context.texts.bodySmall!.copyWith(
                    color: context.colors.primary,
                  ),
                ),
              ),
              SizedBox(height: 16),
              CustomButton(
                text: "Login".tr(),
                isLoading: isLoading,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    cubit.email = emailController.text;
                    cubit.password = passwordController.text;
                    cubit.login();
                  }
                },
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
                  context.routerPush(Routes.registerView);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
