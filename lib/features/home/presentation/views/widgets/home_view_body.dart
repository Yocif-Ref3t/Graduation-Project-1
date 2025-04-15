import 'package:flutter/material.dart';
import 'check_widget.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          CheckWidget(),
        ],
      ),
    );
  }
}
