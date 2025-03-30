import 'package:supabase_flutter/supabase_flutter.dart';

abstract class SupabaseServices {
  static final SupabaseClient _client = Supabase.instance.client;
  static final GoTrueClient _auth = Supabase.instance.client.auth;

  static Future<AuthResponse> register(Map<String, dynamic> data) async {
    final String email = data['email'];
    final String password = data['password'];
    AuthResponse response = await _auth.signUp(email: email, password: password, data: data);
    data.remove('password');
    data['id'] = response.user!.id;
    await _client.from('Users').insert(data);
    response.user!.appMetadata.addAll({'id': response.user!.id});
    return response;
  }

  static Future<AuthResponse> login(Map<String, dynamic> data) async {
    final String email = data['email'];
    final String password = data['password'];
    AuthResponse response = await _auth.signInWithPassword(
      email: email,
      password: password,
    );
    return response;
  }
}
