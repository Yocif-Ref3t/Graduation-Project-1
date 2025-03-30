import 'package:supabase_flutter/supabase_flutter.dart';

class UserModel {
  final String id;
  final String name;
  final String email;
  final String birthdate;
  final String gender;
  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.birthdate,
    required this.gender,
  });

  factory UserModel.fromJson(AuthResponse data) {
    return UserModel(
      id: data.user!.id,
      name: data.user!.userMetadata!['name'],
      email: data.user!.userMetadata!['email'],
      birthdate: data.user!.userMetadata!['birthdate'],
      gender: data.user!.userMetadata!['gender'],
    );
  }
}
