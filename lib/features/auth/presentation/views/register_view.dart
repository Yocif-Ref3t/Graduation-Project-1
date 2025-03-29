import 'package:flutter/material.dart';
import 'package:graduation_project1/features/auth/presentation/views/widgets/register%20view/register_view_body.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: RegisterViewBody()),
    );
  }
}
