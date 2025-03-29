import 'package:flutter/material.dart';

abstract class Decorations {
  static final OutlineInputBorder textFieldBorder = OutlineInputBorder(
    borderSide: BorderSide(color: Colors.grey),
    borderRadius: BorderRadius.circular(5),
  );
}
