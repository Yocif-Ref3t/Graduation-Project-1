import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

extension Context on BuildContext {
  /// To push new view on context by using Go Router
  void goPush(String view) => GoRouter.of(this).push(view);

  /// To get texts theme of current context
  TextTheme get texts => TextTheme.of(this);

  /// To get colors theme of current context
  ColorScheme get colors => ColorScheme.of(this);
}

extension DateExtention on DateTime {
  // To get formatted date ( 25 March 2000 )
  String format([String? pattern]) => DateFormat(pattern ?? 'd MMMM y').format(this);
}
