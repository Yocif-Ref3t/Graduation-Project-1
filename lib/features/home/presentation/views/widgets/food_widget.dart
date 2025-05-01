import 'package:flutter/material.dart';
import 'package:graduation_project1/core/extensions/extensions.dart';

class FoodWidget extends StatelessWidget {
  final Map<String, String> data;
  const FoodWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(bottom: 16),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: context.colors.secondary,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            fit: BoxFit.cover,
            data['image']!,
            width: double.maxFinite,
            height: 150,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(data['title']!, style: context.texts.titleSmall),
                Text(data['desc']!, style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
