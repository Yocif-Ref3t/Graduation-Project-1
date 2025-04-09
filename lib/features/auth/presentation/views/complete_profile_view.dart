import 'package:flutter/material.dart';
import 'package:graduation_project1/features/auth/presentation/views/widgets/complete%20profile%20view/complete_profile_view_body.dart';

class CompleteProfileView extends StatelessWidget {
  const CompleteProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CompleteProfileViewBody(),
      ),
    );
  }
}
