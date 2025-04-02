import 'package:flutter/material.dart';
import 'package:graduation_project1/core/constants/routes.dart';
import 'package:graduation_project1/core/extensions/extensions.dart';
import 'package:lottie/lottie.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset(
          "assets/animations/ecg_heart.json",
          height: 150,
          repeat: false,
          onLoaded: (value) async {
            bool isLoggedIn = Supabase.instance.client.auth.currentUser != null;
            await Future.delayed(value.duration);
            if (context.mounted) context.goPush(isLoggedIn ? Routes.layoutView : Routes.loginView);
          },
        ),
      ),
    );
  }
}
