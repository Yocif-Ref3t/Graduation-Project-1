import 'package:flutter/material.dart';
import 'package:graduation_project1/core/extensions/extensions.dart';

class CustomDateWidget extends StatefulWidget {
  final String hint;
  final Function(DateTime data) onChanged;
  const CustomDateWidget({
    super.key,
    required this.hint,
    required this.onChanged,
  });

  @override
  State<CustomDateWidget> createState() => _CustomDateWidgetState();
}

class _CustomDateWidgetState extends State<CustomDateWidget> {
  DateTime now = DateTime.now();
  DateTime? _selectedDate;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final DateTime? pickedDate = await showDatePicker(
          context: context,
          firstDate: DateTime(now.year - 100),
          lastDate: now,
          initialDate: _selectedDate ?? now,
          currentDate: _selectedDate,
        );
        _selectedDate = pickedDate;
        setState(() {});
        if (_selectedDate == null) return;
        widget.onChanged(_selectedDate!);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        width: double.maxFinite,
        height: 48,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              _selectedDate?.format() ?? widget.hint,
              style: context.texts.bodySmall!.copyWith(
                color: _selectedDate == null ? Colors.grey : Colors.white,
              ),
            ),
            Icon(Icons.date_range, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
