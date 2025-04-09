import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project1/core/constants/app_constants.dart';
import 'package:graduation_project1/core/constants/routes.dart';
import 'package:graduation_project1/core/extensions/extensions.dart';
import 'package:graduation_project1/core/widgets/custom_button.dart';
import 'package:graduation_project1/core/widgets/custom_date_widget.dart';
import 'package:graduation_project1/core/widgets/custom_text_field.dart';
import 'package:graduation_project1/core/widgets/gender_widget.dart';
import 'package:graduation_project1/features/auth/presentation/manager/register%20cubit/register_cubit.dart';

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
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  RegisterCubit get cubit => BlocProvider.of(context);
  DateTime? birthdate;
  int? gender;
  bool isLoading = false, showPassword = false;
  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterCubit, RegisterState>(
      listener: (context, state) {
        if (state is RegisterLoading) {
          isLoading = true;
          setState(() {});
        } else if (state is RegisterSuccess) {
          isLoading = false;
          setState(() {});
          context.routerGo(Routes.homeView);
        } else if (state is RegisterFailure) {
          isLoading = false;
          setState(() {});
          context.showFailure(state.message);
        }
      },
      child: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "AppName".tr(context: context),
                    style: context.texts.titleMedium,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Register".tr(context: context),
                  style: context.texts.titleSmall!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: context.colors.primary,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "RegisterDesc".tr(context: context),
                  style: context.texts.bodySmall!.copyWith(letterSpacing: 2),
                ),
                SizedBox(height: 16),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 16,
                  children: [
                    Expanded(
                      child: CustomTextField(
                        hintText: "FirstName".tr(context: context),
                        validator: (value) {
                          if (value != null && value.isNotEmpty) return null;
                          return "FirstNameDesc".tr(context: context);
                        },
                        controller: firstNameController,
                      ),
                    ),
                    Expanded(
                      child: CustomTextField(
                        hintText: "LastName".tr(context: context),
                        validator: (value) {
                          if (value != null && value.isNotEmpty) return null;
                          return "LastNameDesc".tr(context: context);
                        },
                        controller: lastNameController,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                CustomTextField(
                  hintText: "Email".tr(context: context),
                  icon: Icons.email,
                  validator: (value) {
                    if (value != null && value.isNotEmpty) return null;
                    return "EmailDesc".tr(context: context);
                  },
                  controller: emailController,
                ),
                SizedBox(height: 16),
                CustomTextField(
                  hintText: "Password".tr(context: context),
                  obscureText: !showPassword,
                  icon: showPassword ? Icons.visibility : Icons.visibility_off,
                  iconTap: () {
                    showPassword = !showPassword;
                    setState(() {});
                  },
                  validator: (value) {
                    if (value != null && value.isNotEmpty) return null;
                    return "PasswordDesc".tr(context: context);
                  },
                  controller: passwordController,
                ),
                SizedBox(height: 16),
                CustomDateWidget(
                  hint: "Birthdate".tr(context: context),
                  onChanged: (date) {
                    birthdate = date;
                  },
                ),
                SizedBox(height: 16),
                GenderWidget(
                  onChanged: (gender) {
                    this.gender = gender;
                  },
                ),
                SizedBox(height: 16),
                CustomButton(
                  text: "CreateAccount".tr(context: context),
                  isLoading: isLoading,
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      if (birthdate == null) {
                        return context.showWarning("BirthdateDesc".tr(context: context));
                      }
                      if (gender == null) {
                        return context.showWarning("GenderDesc".tr(context: context));
                      }
                      cubit.name = "${firstNameController.text} ${lastNameController.text}";
                      cubit.email = emailController.text;
                      cubit.password = passwordController.text;
                      cubit.birthdate = birthdate;
                      cubit.age = DateTime.now().year - birthdate!.year;
                      cubit.gender = AppConstants.genderMap[gender];
                      cubit.register();
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
