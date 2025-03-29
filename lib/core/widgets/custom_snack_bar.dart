import 'package:flutter/material.dart';

class ShowCustomSnackBar {
  final _duration = const Duration(seconds: 5);
  final BuildContext context;
  ShowCustomSnackBar(this.context);

  void warning(String message) {
    ScaffoldMessenger.of(context).clearSnackBars();

    SnackBar snackBar = SnackBar(
      backgroundColor: Colors.yellow.shade900.withValues(alpha: 0.8),
      behavior: SnackBarBehavior.floating,
      duration: _duration,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      showCloseIcon: true,
      closeIconColor: Colors.white,
      dismissDirection: DismissDirection.endToStart,
      content: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Icon(Icons.warning, color: Colors.white),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              message,
              style: TextStyle(
                fontSize: 16,
                color: ColorScheme.of(context).onPrimary,
                fontWeight: FontWeight.w600,
              ),
            ),
          )
        ],
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void failure(String message) {
    ScaffoldMessenger.of(context).clearSnackBars();
    SnackBar snackBar = SnackBar(
      duration: _duration,
      backgroundColor: Colors.red.shade700.withValues(alpha: 0.8),
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      showCloseIcon: true,
      closeIconColor: Colors.white,
      dismissDirection: DismissDirection.endToStart,
      content: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Icon(Icons.error_outline, color: Colors.white),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              message,
              style: TextStyle(
                fontSize: 16,
                color: ColorScheme.of(context).onPrimary,
                fontWeight: FontWeight.w600,
              ),
            ),
          )
        ],
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void done(String message) {
    ScaffoldMessenger.of(context).clearSnackBars();

    SnackBar snackBar = SnackBar(
      duration: _duration,
      backgroundColor: Colors.green.shade900.withValues(alpha: 0.8),
      elevation: 5,
      behavior: SnackBarBehavior.floating,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      showCloseIcon: true,
      closeIconColor: Colors.white,
      dismissDirection: DismissDirection.endToStart,
      content: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Icon(Icons.done_all, color: Colors.white),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              message,
              style: TextStyle(
                fontSize: 16,
                color: ColorScheme.of(context).onPrimary,
                fontWeight: FontWeight.w600,
              ),
            ),
          )
        ],
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
