import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project1/features/auth/presentation/manager/login%20cubit/login_cubit.dart';
import 'package:graduation_project1/features/auth/presentation/views/widgets/login%20view/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: Scaffold(
        body: SafeArea(
          child: LoginViewBody(),
        ),
      ),
    );
  }
}
