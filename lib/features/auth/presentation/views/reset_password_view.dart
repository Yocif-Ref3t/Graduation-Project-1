import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project1/features/auth/presentation/manager/reset%20password%20cubit/reset_password_cubit.dart';
import 'package:graduation_project1/features/auth/presentation/views/widgets/reset%20password%20view/reset_password_view_body.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ResetPasswordCubit(),
      child: const Scaffold(
        body: SafeArea(child: ResetPasswordViewBody()),
      ),
    );
  }
}
