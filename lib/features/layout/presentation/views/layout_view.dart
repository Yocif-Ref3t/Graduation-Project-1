import 'package:flutter/material.dart';
import 'package:graduation_project1/core/constants/routes.dart';
import 'package:graduation_project1/core/extensions/extensions.dart';
import 'package:graduation_project1/core/widgets/custom_navigation_bar.dart';

class LayoutView extends StatelessWidget {
  final Widget child;
  const LayoutView({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(
        onChange: (index) {
          if (index == 0) context.routerGo(Routes.profileView);
          if (index == 1) context.routerGo(Routes.profileView);
          if (index == 2) context.routerGo(Routes.settingsView);
        },
      ),
      body: child,
    );
  }
}
