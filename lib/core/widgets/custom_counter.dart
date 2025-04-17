import 'package:flutter/material.dart';
import 'package:graduation_project1/core/extensions/extensions.dart';

class CustomCounter extends StatefulWidget {
  final Function(int value) onChanged;
  const CustomCounter({super.key, required this.onChanged});

  @override
  State<CustomCounter> createState() => _CustomCounterState();
}

class _CustomCounterState extends State<CustomCounter> {
  final TextEditingController controller = TextEditingController(text: "0");
  int currentCount = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            currentCount++;
            setState(() {});
            controller.text = currentCount.toString();
            widget.onChanged(currentCount);
          },
          child: Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
              color: context.colors.primary,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Icon(
                Icons.add,
              ),
            ),
          ),
        ),
        SizedBox(width: 10),
        SizedBox(
          width: 70,
          height: 45,
          child: Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              controller: controller,
              textAlign: TextAlign.center,
              readOnly: true,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.zero,
                border: InputBorder.none,
                filled: true,
                fillColor: context.colors.secondary,
              ),
            ),
          ),
        ),
        SizedBox(width: 10),
        GestureDetector(
          onTap: () {
            if (currentCount == 0) return;
            currentCount--;
            setState(() {});
            controller.text = currentCount.toString();
            widget.onChanged(currentCount);
          },
          child: Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
              border: Border.all(color: context.colors.primary),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Icon(
                Icons.remove,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
