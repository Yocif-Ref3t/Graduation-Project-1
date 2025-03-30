import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project1/features/auth/data/models/user_model.dart';
import 'package:graduation_project1/features/auth/data/repo/auth_repo_impl.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  String? email, password;

  void login() async {
    emit(LoginLoading());
    var result = await AuthRepoImpl().login(this);
    result.fold(
      (failure) => emit(LoginFailure(message: failure.message)),
      (user) => emit(LoginSuccess(user: user)),
    );
  }
}
