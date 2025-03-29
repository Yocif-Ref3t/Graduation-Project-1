import 'package:flutter/material.dart';
import 'package:graduation_project1/features/auth/presentation/views/widgets/login%20view/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LoginViewBody(),
      ),
    );
  }
}
