import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project1/features/auth/presentation/manager/register%20cubit/register_cubit.dart';
import 'package:graduation_project1/features/auth/presentation/views/widgets/register%20view/register_view_body.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: Scaffold(
        body: SafeArea(child: RegisterViewBody()),
      ),
    );
  }
}
