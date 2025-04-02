import 'package:easy_localization/easy_localization.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Failure {
  final String message;
  Failure({required this.message});

  factory Failure.defaultMessage() {
    return Failure(message: "Oops there was an error, please try again later");
  }

  factory Failure.supabaseAuth(AuthException ex) {
    if (ex.statusCode == "400") {
      return Failure(message: "InvalidCredentials".tr());
    } else if (ex.statusCode == "422") {
      return Failure(message: "EmailAlreadyExists".tr());
    }
    return Failure.defaultMessage();
  }
}

bool checkEmail(String email) {
  final emailRegex = RegExp(
    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
  );
  return emailRegex.hasMatch(email);
}
