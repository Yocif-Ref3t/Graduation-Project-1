import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project1/core/extensions/extensions.dart';

class GenderWidget extends StatefulWidget {
  final Function(int gender) onChanged;
  const GenderWidget({super.key, required this.onChanged});

  @override
  State<GenderWidget> createState() => _GenderWidgetState();
}

class _GenderWidgetState extends State<GenderWidget> {
  int? gender;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Gender".tr(), style: context.texts.bodyMedium),
        Row(
          spacing: 16,
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  gender = 0;
                  setState(() {});
                  if (gender != null) widget.onChanged(gender!);
                },
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: gender == 0 ? context.colors.primary : context.colors.secondary,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text("Male".tr(), style: context.texts.bodyLarge),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  gender = 1;
                  setState(() {});
                  if (gender != null) widget.onChanged(gender!);
                },
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: gender == 1 ? context.colors.primary : context.colors.secondary,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text("Female".tr(), style: context.texts.bodyLarge),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
