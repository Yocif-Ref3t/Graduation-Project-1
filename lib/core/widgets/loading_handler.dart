import 'package:flutter/material.dart';
import 'package:graduation_project1/core/extensions/extensions.dart';
import 'package:shimmer/shimmer.dart';

class LoadingHandler extends StatelessWidget {
  final bool isLoading;
  final Widget child;
  const LoadingHandler({
    super.key,
    required this.isLoading,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      if (child is BoxScrollView) return LoadingList();
    }
    return child;
  }
}

class LoadingList extends StatelessWidget {
  const LoadingList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Shimmer.fromColors(
          baseColor: context.colors.secondary,
          highlightColor: Colors.white10,
          child: Container(
            margin: const EdgeInsets.only(bottom: 16),
            height: 70,
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: context.colors.secondary,
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        );
      },
    );
  }
}
