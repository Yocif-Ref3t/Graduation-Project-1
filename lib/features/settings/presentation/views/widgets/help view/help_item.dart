import 'package:flutter/material.dart';
import 'package:graduation_project1/core/extensions/extensions.dart';

class HelpItem extends StatefulWidget {
  final String question;
  final String answer;
  const HelpItem({super.key, required this.question, required this.answer});

  @override
  State<HelpItem> createState() => _HelpItemState();
}

class _HelpItemState extends State<HelpItem> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        isExpanded = !isExpanded;
        setState(() {});
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(bottom: 16),
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: context.colors.secondary,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          spacing: 16,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    widget.question,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: context.texts.bodyLarge,
                  ),
                ),
                Icon(Icons.arrow_drop_down, size: 28),
              ],
            ),
            if (isExpanded)
              Text(
                widget.answer,
                style: context.texts.bodySmall,
              ),
          ],
        ),
      ),
    );
  }
}
