import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project1/core/constants/app_constants.dart';
import 'package:graduation_project1/core/widgets/custom_snack_bar.dart';

extension Context on BuildContext {
  /// To push new view on context by using Go Router
  void routerPush(String view) => GoRouter.of(this).push(view);

  /// To push new view and pop current view on context by using Go Router
  void routerPushReplacement(String view, [Object? extra]) =>
      GoRouter.of(this).pushReplacement(view, extra: extra);

  /// To pop current view on context by using Go Router
  void routerPop() => GoRouter.of(this).pop();

  /// To Remove all views from stack and navigate to new view
  void routerGo(String view) => GoRouter.of(this).go(view);

  /// To get texts theme of current context
  TextTheme get texts => TextTheme.of(this);

  /// To get colors theme of current context
  ColorScheme get colors => ColorScheme.of(this);

  /// To display warning message
  void showWarning(String message) => ShowCustomSnackBar(this).warning(message);

  /// To display failure message
  void showFailure(String message) => ShowCustomSnackBar(this).failure(message);

  /// To display success message
  void showSuccess(String message) => ShowCustomSnackBar(this).done(message);
}

extension DateExtention on DateTime {
  // To get formatted date ( 25 March 2000 )
  String format([String? pattern, String? locale]) =>
      DateFormat(pattern ?? 'd MMMM y', locale).format(this);
}

extension StringExtension on String {
  bool isEmail() => AppConstants.emailRegex.hasMatch(this);
}
