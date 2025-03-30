import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project1/core/extensions/extensions.dart';
import 'package:graduation_project1/core/widgets/custom_button.dart';
import 'package:graduation_project1/core/widgets/custom_text_field.dart';
import 'package:graduation_project1/features/auth/presentation/manager/reset%20password%20cubit/reset_password_cubit.dart';

class ResetPasswordViewBody extends StatefulWidget {
  const ResetPasswordViewBody({super.key});

  @override
  State<ResetPasswordViewBody> createState() => _ResetPasswordViewBodyState();
}

class _ResetPasswordViewBodyState extends State<ResetPasswordViewBody> {
  final TextEditingController emailController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  ResetPasswordCubit get cubit => BlocProvider.of(context);
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return BlocListener<ResetPasswordCubit, ResetPasswordState>(
      listener: (context, state) {
        if (state is ResetPasswordLoading) {
          isLoading = true;
          setState(() {});
        } else if (state is ResetPasswordSuccess) {
          isLoading = false;
          setState(() {});
          context.goPop();
          context.showSuccess("ResetPasswordSuccess".tr());
        } else if (state is ResetPasswordFailure) {
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
            spacing: 20,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "ResetPasswordDesc".tr(),
                style: context.texts.bodyLarge,
              ),
              CustomTextField(
                hintText: "Email".tr(),
                icon: Icons.email,
                validator: (value) {
                  if (value == null || value.isEmpty) return "EmailDesc".tr();
                  return null;
                },
                controller: emailController,
              ),
              CustomButton(
                text: "Send".tr(),
                isLoading: isLoading,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    cubit.resetPassword(emailController.text);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
